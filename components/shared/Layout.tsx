import Nav from "./Nav.tsx";

interface LayoutProps {
  title?: string;
  activeNav?: string;
  children?: any;
}

export default function Layout({ title = "TSP", activeNav, children }: LayoutProps) {
  const pageTitle = String(title);

  return (
    <html lang="en">
      <head>
        <meta charSet="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>{pageTitle}</title>
        <style>{`
          * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
          }
          body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
            line-height: 1.6;
            color: #333;
            background: #fff;
          }
          .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 24px;
          }
          header {
            background: #fff;
            border-bottom: 1px solid #e5e5e5;
            position: sticky;
            top: 0;
            z-index: 100;
          }
          .header-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 0;
          }
          .logo {
            font-size: 24px;
            font-weight: 700;
            color: #2563eb;
            text-decoration: none;
          }
          nav {
            display: flex;
            gap: 32px;
          }
          nav a {
            color: #4b5563;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.2s;
          }
          nav a:hover,
          nav a.active {
            color: #2563eb;
          }
          footer {
            padding: 48px 0;
            border-top: 1px solid #e5e5e5;
            text-align: center;
            color: #6b7280;
          }
        `}</style>
      </head>
      <body>
        <header>
          <div className="container">
            <div className="header-inner">
              <a href="/" className="logo">TSP</a>
              <Nav active={activeNav} />
            </div>
          </div>
        </header>
        {children}
        <footer>
          <div className="container">
            <p>© 2026 TSP Framework. Released under the MIT License.</p>
          </div>
        </footer>
      </body>
    </html>
  );
}
