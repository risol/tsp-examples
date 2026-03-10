import Layout from "./components/shared/Layout.tsx";

export default Page(async function (ctx) {
  return (
    <Layout title="TSP - TypeScript Server Pages">
      <main>
        <section className="hero">
          <div className="container">
            <h1>Build Web Apps with<br /><span>TypeScript Server Pages</span></h1>
            <p>
              TSP is a TypeScript server that executes `.tsp` files directly like PHP,
              designed for AI-driven development. Simple, type-safe, and powerful.
            </p>
            <div className="hero-buttons">
              <a href="/download" className="btn btn-primary">Get Started</a>
              <a href="/docs" className="btn btn-secondary">Read Documentation</a>
            </div>
          </div>
        </section>

        <section className="features">
          <div className="container">
            <h2>Why Choose TSP?</h2>
            <div className="features-grid">
              <div className="feature-card">
                <div className="feature-icon">⚡</div>
                <h3>Execute Like PHP</h3>
                <p>
                  Run `.tsp` files directly. No build step, no compilation.
                  Just write TypeScript and see the results instantly.
                </p>
              </div>
              <div className="feature-card">
                <div className="feature-icon">🔥</div>
                <h3>Hot Reload</h3>
                <p>
                  Save a file and see changes instantly. Works with nested
                  dependencies at any depth. No rebuild, no restart.
                </p>
              </div>
              <div className="feature-card">
                <div className="feature-icon">🛡️</div>
                <h3>Secure by Default</h3>
                <p>
                  Comprehensive path checking and permission control.
                  Safe to run in production environments.
                </p>
              </div>
              <div className="feature-card">
                <div className="feature-icon">🔒</div>
                <h3>Type-Safe</h3>
                <p>
                  Complete TypeScript support with full type inference.
                  Schema-first database API ensures type safety from database to template.
                </p>
              </div>
              <div className="feature-card">
                <div className="feature-icon">🗄️</div>
                <h3>Database Integration</h3>
                <p>
                  Built-in MySQL, Redis, and LDAP support with type-safe queries.
                  Zod validation ensures data integrity.
                </p>
              </div>
              <div className="feature-card">
                <div className="feature-icon">🤖</div>
                <h3>AI-Optimized</h3>
                <p>
                  Designed specifically for AI-driven development.
                  Minimal behavioral space, zero configuration, predictable patterns.
                </p>
              </div>
            </div>
          </div>
        </section>

        <section className="code-section">
          <div className="container">
            <h2>Simple Yet Powerful</h2>
            <div className="code-example">
              <pre>{`// hello.tsp - Access at /hello
export default Page(async function(ctx, { response }) {
  return (
    <html>
      <head>
        <title>Hello TSP!</title>
        <style>{\`
          body { font-family: sans-serif; margin: 50px; }
          h1 { color: #3178c6; }
        \`}</style>
      </head>
      <body>
        <h1>Hello, TSP!</h1>
        <p>URL: {ctx.url.pathname}</p>
        <p>Time: {new Date().toLocaleString()}</p>
      </body>
    </html>
  );
});`}</pre>
            </div>
            <p className="code-note">
              No imports needed - <code>Page</code>, <code>ctx</code>, and <code>response</code> are all global.
            </p>
          </div>
        </section>

        <section className="cta">
          <div className="container">
            <h2>Ready to Get Started?</h2>
            <p>Download TSP and start building web applications in minutes.</p>
            <a href="/download" className="btn btn-primary">Download TSP</a>
          </div>
        </section>
      </main>
      <style>{`
        .hero {
          padding: 80px 0;
          text-align: center;
          background: linear-gradient(180deg, #f8fafc 0%, #fff 100%);
        }
        .hero h1 {
          font-size: 56px;
          font-weight: 800;
          margin-bottom: 24px;
          color: #111;
          letter-spacing: -0.02em;
        }
        .hero h1 span {
          color: #2563eb;
        }
        .hero p {
          font-size: 20px;
          color: #6b7280;
          max-width: 640px;
          margin: 0 auto 40px;
        }
        .hero-buttons {
          display: flex;
          gap: 16px;
          justify-content: center;
        }
        .btn {
          display: inline-block;
          padding: 14px 32px;
          border-radius: 8px;
          font-weight: 600;
          text-decoration: none;
          transition: all 0.2s;
        }
        .btn-primary {
          background: #2563eb;
          color: #fff;
        }
        .btn-primary:hover {
          background: #1d4ed8;
          transform: translateY(-1px);
        }
        .btn-secondary {
          background: #fff;
          color: #374151;
          border: 1px solid #e5e5e5;
        }
        .btn-secondary:hover {
          border-color: #2563eb;
          color: #2563eb;
        }
        .features {
          padding: 80px 0;
        }
        .features h2 {
          text-align: center;
          font-size: 36px;
          margin-bottom: 48px;
        }
        .features-grid {
          display: grid;
          grid-template-columns: repeat(3, 1fr);
          gap: 32px;
        }
        .feature-card {
          padding: 32px;
          border-radius: 12px;
          border: 1px solid #e5e5e5;
          transition: all 0.2s;
        }
        .feature-card:hover {
          border-color: #2563eb;
          box-shadow: 0 8px 24px rgba(0,0,0,0.08);
        }
        .feature-icon {
          width: 48px;
          height: 48px;
          background: #eff6ff;
          border-radius: 10px;
          display: flex;
          align-items: center;
          justify-content: center;
          margin-bottom: 16px;
          font-size: 24px;
        }
        .feature-card h3 {
          font-size: 20px;
          margin-bottom: 12px;
        }
        .feature-card p {
          color: #6b7280;
        }
        .code-section {
          padding: 80px 0;
          background: #f8fafc;
        }
        .code-section h2 {
          text-align: center;
          font-size: 36px;
          margin-bottom: 32px;
        }
        .code-example {
          background: #1e293b;
          border-radius: 12px;
          padding: 24px;
          overflow-x: auto;
          max-width: 800px;
          margin: 0 auto;
        }
        .code-example pre {
          color: #e2e8f0;
          font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
          font-size: 14px;
          line-height: 1.6;
          margin: 0;
        }
        .code-note {
          text-align: center;
          margin-top: 16px;
          color: #6b7280;
        }
        .code-note code {
          background: #e5e7eb;
          padding: 2px 8px;
          border-radius: 4px;
          font-size: 14px;
        }
        .cta {
          background: #111;
          padding: 80px 0;
          text-align: center;
          color: #fff;
        }
        .cta h2 {
          font-size: 36px;
          margin-bottom: 16px;
        }
        .cta p {
          color: #9ca3af;
          margin-bottom: 32px;
          font-size: 18px;
        }
      `}</style>
    </Layout>
  );
});
