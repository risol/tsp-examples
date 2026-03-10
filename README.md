# TSP Website Example

This is a sample website built with [TSP (TypeScript Server Pages)](https://github.com/risol/tsp). It demonstrates how to create a website using TSP framework.

## Quick Start

```bash
# Download and extract TSP
curl -L https://github.com/risol/tsp/releases/latest/download/tsp-linux-x64.tar.gz -o tsp.tar.gz
tar -xzf tsp.tar.gz
cd tsp-linux-x64

# Start the server with this project
./tspserver --root /path/to/tsp-examples --port 9000

# Visit http://localhost:9000
```

## Project Structure

```
tsp-examples/
├── index.tsp           # Home page (/)
├── about.tsp           # About page (/about)
├── docs.tsp            # Documentation (/docs)
├── download.tsp        # Download page (/download)
├── components/         # Shared components
│   └── shared/
│       ├── Layout.tsx  # Main layout component
│       └── Nav.tsx     # Navigation component
├── .claude/            # Claude Code skills and references
│   └── skills/
│       ├── tsp-coding/          # TSP coding guidance
│       ├── tsp-auth-permission/ # Authentication & authorization
│       └── tsp-site-bootstrap/ # Site bootstrap skill
└── CLAUDE.md           # Project instructions for Claude Code
```

## Developing

### Adding New Pages

Create a new `.tsp` file in the root directory:

```tsx
// newpage.tsp - accessible at /newpage
import Layout from "./components/shared/Layout.tsx";

export default Page(async function (ctx) {
  return (
    <Layout title="New Page - TSP">
      <div className="container">
        <h1>Welcome to the new page</h1>
      </div>
    </Layout>
  );
});
```

### Using Components

Import and use shared components:

```tsx
import Layout from "./components/shared/Layout.tsx";
import Nav from "./components/shared/Nav.tsx";
```

## Claude Code Skills

This project uses Claude Code skills located in the `.claude/skills/` directory:

### tsp-coding
Technical guidance for writing, modifying, refactoring, or understanding TSP code. Use this skill for:
- Identifying TSP web root
- Writing `.tsp` pages or APIs
- Using `Page`, dependency injection, `body()` or `query()` validation
- Sessions or MySQL operations

### tsp-auth-permission
Authentication and authorization guidance for TSP projects. Use this skill for:
- Login/logout functionality
- Session management
- Admin checks, role or menu permissions
- Protected APIs

### tsp-site-bootstrap
Bootstrap a new TSP site or initialize the smallest working page skeleton. Use this skill when:
- Starting a new TSP web project from scratch
- Choosing the web-root convention
- Creating the home page
- Setting up the minimum directory structure

## Learn More

- [TSP GitHub](https://github.com/risol/tsp)
- [TSP Documentation](/docs)
- [Download TSP](/download)
