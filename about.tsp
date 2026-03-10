import Layout from "./components/shared/Layout.tsx";

export default Page(async function (ctx) {
  return (
    <Layout title="About - TSP" activeNav="/about">
      <div className="page-header">
        <div className="container">
          <h1>About TSP</h1>
          <p>
            Learn more about TypeScript Server Pages and the project.
          </p>
        </div>
      </div>

      <main className="content">
        <div className="container">
          <section className="section">
            <h2>What is TSP?</h2>
            <p>
              TSP (TypeScript Server Pages) is a TypeScript server that executes `.tsp` files
              directly like PHP, designed specifically for AI-driven development. It brings
              the simplicity of PHP to the TypeScript world with modern type safety.
            </p>
            <br />
            <p>
              With TSP, you can create web pages by simply writing `.tsp` files - no build
              step, no compilation, just write and refresh. It supports hot reloading, so
              changes appear instantly as you edit your files.
            </p>
          </section>

          <section className="section">
            <h2>Why TSP?</h2>
            <p>
              Traditional web frameworks often require complex setup, multiple configuration
              files, and steep learning curves. TSP takes a different approach:
            </p>
            <ul>
              <li><strong>Zero Configuration</strong> - No package.json, no tsconfig.json, no router files</li>
              <li><strong>Minimal Behavioral Space</strong> - Only one way to write server-side code</li>
              <li><strong>Type-Safe</strong> - Full TypeScript support with dependency injection</li>
              <li><strong>AI-Optimized</strong> - Designed for AI code generation with predictable patterns</li>
            </ul>
          </section>

          <section className="section">
            <h2>Key Features</h2>
            <ul>
              <li>Execute `.tsp` files directly like PHP</li>
              <li>Smart caching with file modification time-based module caching</li>
              <li>Hot reload with nested dependencies at any depth</li>
              <li>Comprehensive path checking and permission control</li>
              <li>Full-featured: query parameters, POST data, cookies, redirects</li>
              <li>Component-based development using TSX + React</li>
              <li>Schema-first database API with Zod validation</li>
              <li>Built-in MySQL, Redis, and LDAP support</li>
              <li>Built-in web file manager with password protection</li>
              <li>Config auto-reload without restart</li>
              <li>Static file serving (HTML, CSS, JS, images)</li>
              <li>Automatic port management</li>
            </ul>
          </section>

          <section className="section">
            <h2>Open Source</h2>
            <p>
              TSP is open source and free to use. We welcome contributions from
              developers around the world. Whether you want to report a bug, request
              a feature, or contribute code, we'd love to hear from you.
            </p>
          </section>

          <section className="section">
            <h2>License</h2>
            <p>
              TSP is released under the MIT License. This means you can use it freely
              in your personal and commercial projects. We're committed to keeping
              TSP open and accessible to everyone.
            </p>
          </section>

          <section className="section">
            <h2>Resources</h2>
            <div className="links">
              <a href="https://github.com/risol/tsp" target="_blank" rel="noopener">GitHub</a>
              <a href="https://github.com/risol/tsp/releases" target="_blank" rel="noopener">Releases</a>
              <a href="https://github.com/risol/tsp/issues" target="_blank" rel="noopener">Issue Tracker</a>
            </div>
          </section>
        </div>
      </main>
      <style>{`
        .page-header {
          background: #f8fafc;
          padding: 64px 0;
          text-align: center;
        }
        .page-header h1 {
          font-size: 48px;
          font-weight: 800;
          margin-bottom: 16px;
        }
        .page-header p {
          font-size: 20px;
          color: #6b7280;
          max-width: 600px;
          margin: 0 auto;
        }
        .content {
          padding: 64px 0;
        }
        .section {
          margin-bottom: 48px;
        }
        .section h2 {
          font-size: 28px;
          margin-bottom: 16px;
        }
        .section p {
          color: #4b5563;
          font-size: 17px;
          line-height: 1.7;
        }
        .section ul {
          margin: 16px 0;
          padding-left: 24px;
          color: #4b5563;
        }
        .section li {
          margin-bottom: 8px;
          line-height: 1.6;
        }
        .section strong {
          color: #111;
        }
        .links {
          display: flex;
          gap: 24px;
        }
        .links a {
          color: #2563eb;
          text-decoration: none;
          font-weight: 500;
        }
        .links a:hover {
          text-decoration: underline;
        }
      `}</style>
    </Layout>
  );
});
