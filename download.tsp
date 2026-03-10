import Layout from "./components/shared/Layout.tsx";

export default Page(async function (ctx) {
  return (
    <Layout title="Download - TSP" activeNav="/download">
      <div className="page-header">
        <div className="container">
          <h1>Download TSP</h1>
          <p>Get started with TypeScript Server Pages.</p>
        </div>
      </div>

      <main className="content">
        <div className="container">
          <div className="install-section">
            <h2>Quick Install</h2>
            <div className="install-code">
              <span className="comment"># Download the latest release for Linux</span><br />
              <span className="cmd">curl -L https://github.com/risol/tsp/releases/latest/download/tsp-linux-x64.tar.gz -o tsp.tar.gz</span><br />
              <span className="cmd">tar -xzf tsp.tar.gz</span><br />
              <span className="cmd">cd tsp-linux-x64</span><br /><br />
              <span className="comment"># Start the server</span><br />
              <span className="cmd">./tspserver --root ./www --port 9000</span>
            </div>
            <p className="install-note">
              Then open <code>http://localhost:9000</code> in your browser.
            </p>
          </div>

          <div className="platform-section">
            <h2>Platform Packages</h2>
            <div className="platform-grid">
              <div className="platform-card">
                <h3>Linux</h3>
                <p>x86_64 binary</p>
                <a href="https://github.com/risol/tsp/releases/latest/download/tsp-linux-x64.tar.gz" className="download-btn">Download</a>
              </div>
              <div className="platform-card">
                <h3>Windows</h3>
                <p>x86_64 binary (.zip)</p>
                <a href="https://github.com/risol/tsp/releases/latest/download/tsp-windows-x64.zip" className="download-btn">Download</a>
              </div>
            </div>
          </div>

          <div className="features-section">
            <h2>What's Included</h2>
            <div className="features-list">
              <div className="feature-item">
                <h3>tspserver</h3>
                <p>The main TSP server executable</p>
              </div>
              <div className="feature-item">
                <h3>Sample Project</h3>
                <p>Example .tsp files to get started</p>
              </div>
              <div className="feature-item">
                <h3>Documentation</h3>
                <p>Quick start guide and README</p>
              </div>
            </div>
          </div>

          <div className="build-section">
            <h2>Build from Source</h2>
            <p>To build TSP from source, you'll need Rust and C build tools:</p>
            <div className="install-code">
              <span className="comment"># Clone the repository (with submodules)</span><br />
              <span className="cmd">git clone --recursive https://github.com/risol/tsp.git</span><br />
              <span className="cmd">cd tsp</span><br /><br />
              <span className="comment"># Or if already cloned, init submodules</span><br />
              <span className="cmd">git submodule update --init --recursive</span><br /><br />
              <span className="comment"># Build the runtime and server</span><br />
              <span className="cmd">sh ./tsp.sh build:denort</span><br />
              <span className="cmd">sh ./tsp.sh build:deno</span><br />
              <span className="cmd">sh ./tsp.sh build:tspserver</span><br /><br />
              <span className="comment"># Start the server</span><br />
              <span className="cmd">sh ./tsp.sh start</span>
            </div>
          </div>

          <div className="links-section">
            <h2>Resources</h2>
            <div className="link-buttons">
              <a href="/docs" className="link-btn link-btn-primary">Read Documentation</a>
              <a href="https://github.com/risol/tsp" className="link-btn link-btn-secondary" target="_blank" rel="noopener">View on GitHub</a>
              <a href="https://github.com/risol/tsp/releases" className="link-btn link-btn-secondary" target="_blank" rel="noopener">All Releases</a>
            </div>
          </div>
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
        .install-section, .platform-section, .build-section, .features-section {
          margin-bottom: 64px;
        }
        .install-section h2, .platform-section h2, .build-section h2, .features-section h2, .links-section h2 {
          font-size: 28px;
          margin-bottom: 24px;
          text-align: center;
        }
        .install-code {
          background: #1e293b;
          color: #e2e8f0;
          padding: 24px;
          border-radius: 8px;
          font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
          font-size: 14px;
          line-height: 1.8;
          overflow-x: auto;
        }
        .install-code .comment {
          color: #64748b;
        }
        .install-code .cmd {
          color: #86efac;
        }
        .install-note {
          text-align: center;
          margin-top: 16px;
          color: #6b7280;
        }
        .install-note code {
          background: #e5e7eb;
          padding: 2px 8px;
          border-radius: 4px;
        }
        .platform-grid {
          display: grid;
          grid-template-columns: repeat(2, 1fr);
          gap: 24px;
          max-width: 600px;
          margin: 0 auto;
        }
        .platform-card {
          border: 1px solid #e5e5e5;
          border-radius: 12px;
          padding: 24px;
          text-align: center;
        }
        .platform-card h3 {
          font-size: 18px;
          margin-bottom: 8px;
        }
        .platform-card p {
          color: #6b7280;
          font-size: 14px;
          margin-bottom: 16px;
        }
        .download-btn {
          display: inline-block;
          padding: 8px 20px;
          background: #2563eb;
          color: #fff;
          text-decoration: none;
          border-radius: 6px;
          font-weight: 500;
          font-size: 14px;
        }
        .download-btn:hover {
          background: #1d4ed8;
        }
        .features-list {
          display: grid;
          grid-template-columns: repeat(3, 1fr);
          gap: 24px;
        }
        .feature-item {
          padding: 24px;
          border: 1px solid #e5e5e5;
          border-radius: 12px;
        }
        .feature-item h3 {
          font-size: 16px;
          margin-bottom: 8px;
        }
        .feature-item p {
          color: #6b7280;
          font-size: 14px;
        }
        .build-section p {
          text-align: center;
          color: #6b7280;
          margin-bottom: 24px;
        }
        .links-section {
          text-align: center;
          margin-top: 48px;
        }
        .link-buttons {
          display: flex;
          gap: 16px;
          justify-content: center;
        }
        .link-btn {
          display: inline-block;
          padding: 12px 24px;
          border-radius: 8px;
          text-decoration: none;
          font-weight: 500;
          transition: all 0.2s;
        }
        .link-btn-primary {
          background: #2563eb;
          color: #fff;
        }
        .link-btn-primary:hover {
          background: #1d4ed8;
        }
        .link-btn-secondary {
          background: #fff;
          border: 1px solid #e5e5e5;
          color: #374151;
        }
        .link-btn-secondary:hover {
          border-color: #2563eb;
          color: #2563eb;
        }
      `}</style>
    </Layout>
  );
});
