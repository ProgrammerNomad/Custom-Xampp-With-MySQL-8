<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Custom XAMPP Info</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            max-width: 900px;
            width: 100%;
            overflow: hidden;
        }
        .header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px;
            text-align: center;
        }
        .header h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }
        .header p {
            font-size: 1.2em;
            opacity: 0.9;
        }
        .badge {
            display: inline-block;
            background: rgba(255,255,255,0.2);
            padding: 8px 16px;
            border-radius: 20px;
            margin-top: 15px;
            font-weight: bold;
        }
        .content {
            padding: 40px;
        }
        .section {
            margin-bottom: 30px;
        }
        .section h2 {
            color: #667eea;
            font-size: 1.5em;
            margin-bottom: 15px;
            border-bottom: 2px solid #667eea;
            padding-bottom: 10px;
        }
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 15px;
            margin-top: 20px;
        }
        .feature-card {
            background: #f8f9ff;
            padding: 20px;
            border-radius: 10px;
            border-left: 4px solid #667eea;
        }
        .feature-card h3 {
            color: #667eea;
            font-size: 1.1em;
            margin-bottom: 8px;
        }
        .feature-card p {
            color: #666;
            font-size: 0.95em;
        }
        .stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .stat-box {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 25px;
            border-radius: 10px;
            text-align: center;
        }
        .stat-box .number {
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .stat-box .label {
            font-size: 0.9em;
            opacity: 0.9;
        }
        .warning-box {
            background: #fff3cd;
            border-left: 4px solid #ffc107;
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
        .warning-box strong {
            color: #856404;
        }
        .links {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .btn {
            display: inline-block;
            padding: 12px 24px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: transform 0.2s;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
        .footer {
            background: #f8f9ff;
            padding: 20px 40px;
            text-align: center;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Custom High-Performance XAMPP</h1>
            <p>MySQL 8.0 Edition</p>
            <span class="badge">Optimized Build</span>
        </div>
        
        <div class="content">
            <div class="section">
                <h2>Performance Statistics</h2>
                <div class="stats">
                    <div class="stat-box">
                        <div class="number">1GB</div>
                        <div class="label">PHP Memory</div>
                    </div>
                    <div class="stat-box">
                        <div class="number">4GB</div>
                        <div class="label">MySQL Buffer</div>
                    </div>
                    <div class="stat-box">
                        <div class="number">256MB</div>
                        <div class="label">Upload Size</div>
                    </div>
                    <div class="stat-box">
                        <div class="number">5-10x</div>
                        <div class="label">Faster PHP</div>
                    </div>
                </div>
            </div>

            <div class="section">
                <h2>Key Features</h2>
                <div class="features">
                    <div class="feature-card">
                        <h3>MySQL 8.0.45</h3>
                        <p>Latest MySQL with modern features and optimizations</p>
                    </div>
                    <div class="feature-card">
                        <h3>OPcache Enabled</h3>
                        <p>256MB cache for 5-10x faster PHP execution</p>
                    </div>
                    <div class="feature-card">
                        <h3>phpMyAdmin 5.2.3</h3>
                        <p>Latest version with all advanced features</p>
                    </div>
                    <div class="feature-card">
                        <h3>Large File Support</h3>
                        <p>Upload files up to 256MB</p>
                    </div>
                    <div class="feature-card">
                        <h3>Enhanced Security</h3>
                        <p>Optimized Apache security headers</p>
                    </div>
                    <div class="feature-card">
                        <h3>Production Ready</h3>
                        <p>Optimized for both dev and production</p>
                    </div>
                </div>
            </div>

            <div class="section">
                <h2>Software Versions</h2>
                <div class="features">
                    <div class="feature-card">
                        <h3>PHP</h3>
                        <p><?php echo phpversion(); ?></p>
                    </div>
                    <div class="feature-card">
                        <h3>MySQL</h3>
                        <p>8.0.45</p>
                    </div>
                    <div class="feature-card">
                        <h3>Apache</h3>
                        <p><?php echo apache_get_version(); ?></p>
                    </div>
                    <div class="feature-card">
                        <h3>OPcache</h3>
                        <p><?php echo function_exists('opcache_get_status') && opcache_get_status() ? 'Enabled' : 'Disabled'; ?></p>
                    </div>
                </div>
            </div>

            <div class="warning-box">
                <strong>Note:</strong> This is NOT a default XAMPP installation. It has been heavily optimized and customized for maximum performance. See README.md for complete documentation.
            </div>

            <div class="section">
                <h2>Quick Links</h2>
                <div class="links">
                    <a href="/phpmyadmin" class="btn">phpMyAdmin</a>
                    <a href="/dashboard" class="btn">Dashboard</a>
                    <a href="https://github.com/ProgrammerNomad/Custom-Xampp-With-MySQL-8" class="btn" target="_blank">GitHub Repository</a>
                </div>
            </div>
        </div>

        <div class="footer">
            Built by ProgrammerNomad | February 2026 | Optimized for Performance
        </div>
    </div>
</body>
</html>
