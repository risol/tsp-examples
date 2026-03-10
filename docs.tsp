import Layout from "./components/shared/Layout.tsx";

export default Page(async function (ctx) {
  return (
    <Layout title="Documentation - TSP" activeNav="/docs">
      <div className="page-header">
        <div className="container">
          <h1>Documentation</h1>
          <p>Everything you need to know to build with TSP.</p>
        </div>
      </div>

      <div className="container">
        <div className="docs-layout">
          <aside className="sidebar">
            <div className="sidebar-section">
              <div className="sidebar-title">Getting Started</div>
              <a href="#introduction">Introduction</a>
              <a href="#installation">Installation</a>
              <a href="#quickstart">Quick Start</a>
            </div>
            <div className="sidebar-section">
              <div className="sidebar-title">Core Concepts</div>
              <a href="#pages">Pages</a>
              <a href="#routing">Routing</a>
              <a href="#components">Components</a>
            </div>
            <div className="sidebar-section">
              <div className="sidebar-title">Database</div>
              <a href="#database">MySQL Setup</a>
              <a href="#queries">Queries</a>
            </div>
            <div className="sidebar-section">
              <div className="sidebar-title">Advanced</div>
              <a href="#sessions">Sessions</a>
              <a href="#api">REST APIs</a>
            </div>
          </aside>

          <div className="doc-content">
            <section id="introduction" className="doc-section">
              <h2>Introduction</h2>
              <p>
                TypeScript Server Pages (TSP) is a full-stack web framework that lets you
                build server-rendered web applications using TypeScript. With TSP, you
                get type safety from your database all the way to your HTML templates.
              </p>
              <p>
                TSP is built on Deno, which means you get native TypeScript support,
                excellent performance, and a secure runtime environment out of the box.
              </p>
            </section>

            <section id="installation" className="doc-section">
              <h2>Installation</h2>
              <p>Install Deno first, then create a new TSP project:</p>
              <div className="code-block">
                <span className="comment"># Create a new TSP project</span><br />
                deno run -A -r https://tsp.example.com init my-project
              </div>
              <p>Or clone the starter template:</p>
              <div className="code-block">
                <span className="comment"># Clone starter template</span><br />
                git clone https://github.com/tsp-framework/starter my-project
              </div>
            </section>

            <section id="quickstart" className="doc-section">
              <h2>Quick Start</h2>
              <p>Create your first page:</p>
              <div className="code-block">
                <span className="comment">// index.tsp</span><br />
                <span className="keyword">export default</span> <span className="function">Page</span>(<span className="keyword">async function</span>(ctx) {'{'}<br />
                &nbsp;&nbsp;<span className="keyword">return</span> (<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&lt;<span className="tag">html</span>&gt;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;<span className="tag">body</span>&gt;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;<span className="tag">h1</span>&gt;Hello, World!&lt;/<span className="tag">h1</span>&gt;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/<span className="tag">body</span>&gt;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&lt;/<span className="tag">html</span>&gt;<br />
                &nbsp;&nbsp;);<br />
                {'}'});
              </div>
              <p>Run your application:</p>
              <div className="code-block">
                deno task start
              </div>
            </section>

            <section id="routing" className="doc-section">
              <h2>Routing</h2>
              <p>
                TSP uses file-based routing. Each .tsp file in your project becomes
                a route automatically:
              </p>
              <ul>
                <li><code>index.tsp</code> → <code>/</code></li>
                <li><code>about.tsp</code> → <code>/about</code></li>
                <li><code>products/[id].tsp</code> → <code>/products/:id</code></li>
              </ul>
            </section>

            <section id="database" className="doc-section">
              <h2>Database</h2>
              <p>Connect to MySQL using the built-in query helper:</p>
              <div className="code-block">
                <span className="keyword">import</span> {'{ query }'} <span className="keyword">from</span> <span className="string">"mysql:client"</span>;<br /><br />
                <span className="keyword">const</span> rows = <span className="keyword">await</span> <span className="function">query</span>(<span className="string">"SELECT * FROM users"</span>);
              </div>
            </section>

            <section id="sessions" className="doc-section">
              <h2>Sessions</h2>
              <p>Access session data through the context:</p>
              <div className="code-block">
                <span className="keyword">export default</span> <span className="function">Page</span>(<span className="keyword">async function</span>(ctx) {'{'}<br />
                &nbsp;&nbsp;<span className="keyword">const</span> user = ctx.<span className="function">session</span>().<span className="function">get</span>(<span className="string">"user"</span>);<br />
                &nbsp;&nbsp;<span className="comment">// ...</span><br />
                {'}'});
              </div>
            </section>
          </div>
        </div>
      </div>
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
        .docs-layout {
          display: grid;
          grid-template-columns: 260px 1fr;
          gap: 48px;
          padding: 48px 0;
          min-height: 60vh;
        }
        .sidebar {
          position: sticky;
          top: 100px;
          align-self: start;
        }
        .sidebar-section {
          margin-bottom: 24px;
        }
        .sidebar-title {
          font-size: 12px;
          font-weight: 600;
          text-transform: uppercase;
          color: #9ca3af;
          margin-bottom: 12px;
          letter-spacing: 0.05em;
        }
        .sidebar a {
          display: block;
          padding: 8px 0;
          color: #4b5563;
          text-decoration: none;
          font-size: 15px;
        }
        .sidebar a:hover {
          color: #2563eb;
        }
        .sidebar a.active {
          color: #2563eb;
          font-weight: 500;
        }
        .doc-content {
          max-width: 720px;
        }
        .doc-section {
          margin-bottom: 48px;
        }
        .doc-section h2 {
          font-size: 32px;
          margin-bottom: 16px;
          padding-top: 16px;
        }
        .doc-section h3 {
          font-size: 22px;
          margin: 24px 0 12px;
        }
        .doc-section p {
          color: #4b5563;
          font-size: 17px;
          margin-bottom: 16px;
        }
        .doc-section ul {
          margin-left: 24px;
          color: #4b5563;
          margin-bottom: 16px;
        }
        .doc-section li {
          margin-bottom: 8px;
        }
        .code-block {
          background: #1e293b;
          color: #e2e8f0;
          padding: 20px;
          border-radius: 8px;
          overflow-x: auto;
          font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
          font-size: 14px;
          line-height: 1.5;
          margin-bottom: 16px;
        }
        .code-block .comment {
          color: #64748b;
        }
        .code-block .keyword {
          color: #c084fc;
        }
        .code-block .string {
          color: #86efac;
        }
        .code-block .function {
          color: #93c5fd;
        }
        .code-block .tag {
          color: #fca5a5;
        }
        .code-block .attr {
          color: #fdba74;
        }
      `}</style>
    </Layout>
  );
});
