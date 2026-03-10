interface NavProps {
  active?: string;
}

export default function Nav({ active }: NavProps) {
  const links = [
    { href: "/docs", label: "Docs" },
    { href: "/download", label: "Download" },
    { href: "/about", label: "About" },
  ];

  return (
    <nav>
      {links.map((link) => (
        <a
          key={link.href}
          href={link.href}
          className={active === link.href ? "active" : ""}
        >
          {link.label}
        </a>
      ))}
    </nav>
  );
}
