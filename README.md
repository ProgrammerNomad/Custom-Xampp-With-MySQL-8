# Custom High-Performance XAMPP with MySQL 8.0

A fully optimized, production-ready XAMPP stack with MySQL 8.0, upgraded phpMyAdmin, and performance enhancements.

## What Makes This Custom?

This is NOT a default XAMPP installation. It has been significantly enhanced and optimized for maximum performance.

### Key Upgrades

**MySQL 8.0 Integration**
- Replaced legacy MariaDB/MySQL with standalone MySQL Server 8.0.45
- Optimized for 16GB RAM systems with 4GB InnoDB buffer pool
- Enhanced query performance and modern SQL features
- Native password authentication configured

**phpMyAdmin 5.2.3**
- Upgraded to latest stable version (English)
- Full configuration storage enabled
- Advanced features: bookmarks, query history, designer tools
- Control user and database properly configured

**PHP Performance Optimization**
- Memory limit: 1024M (1GB)
- OPcache enabled: 256MB cache, 20,000 files
- Upload/Post size: 256MB (for large file handling)
- Realpath cache: 8192K with 600s TTL
- Max input vars: 5000

**Apache Optimization**
- MaxKeepAliveRequests: 500 (from 100)
- Security headers optimized (ServerTokens: Prod)
- Enhanced connection handling

**MySQL Performance Tuning**
- InnoDB buffer pool: 4GB with 4 instances
- Log file size: 256MB
- Max connections: 200
- Table cache: 4,000 tables
- Max packet size: 256MB
- Optimized read/write buffers

## System Requirements

- Windows 10/11 (64-bit)
- Minimum 8GB RAM (16GB recommended)
- 5GB free disk space
- Administrator privileges for service installation

## Installation

### First Time Setup

1. **Clone this repository:**
```bash
git clone https://github.com/ProgrammerNomad/Custom-Xampp-With-MySQL-8.git C:\xampp
```

2. **Initialize MySQL (Run PowerShell as Administrator):**
```powershell
cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
.\mysqld.exe --initialize-insecure --console
```

3. **Install MySQL as Windows Service:**
```powershell
.\mysqld.exe --install MySQL80
Start-Service MySQL80
```

4. **Start XAMPP Control Panel:**
```
C:\xampp\xampp-control.exe
```

5. **Start Apache & MySQL** from the control panel

### Portable Mode (No Installation)

If you want to run without installing services:
- MySQL runs directly from XAMPP Control Panel
- No system services needed
- Perfect for USB drives or testing environments

## Usage

### Starting Services

**Via XAMPP Control Panel:**
- Open `C:\xampp\xampp-control.exe`
- Click "Start" next to Apache
- Click "Start" next to MySQL

**Via Command Line (if services installed):**
```powershell
Start-Service Apache2.4
Start-Service MySQL80
```

### Access URLs

- **Localhost:** http://localhost
- **phpMyAdmin:** http://localhost/phpmyadmin
- **Dashboard:** http://localhost/dashboard

### Default Credentials

- **MySQL Root User:** root
- **MySQL Root Password:** (empty)
- **phpMyAdmin Control User:** pma
- **phpMyAdmin Control Password:** (empty)

**Security Warning:** Change default passwords in production environments!

## Configuration Files

All configuration files are included and pre-optimized:

- **PHP:** `C:\xampp\php\php.ini`
- **Apache:** `C:\xampp\apache\conf\httpd.conf`
- **MySQL:** `C:\xampp\mysql\bin\my.ini`
- **phpMyAdmin:** `C:\xampp\phpMyAdmin\config.inc.php`

## Performance Specifications

### PHP Settings
```
memory_limit = 1024M
upload_max_filesize = 256M
post_max_size = 256M
max_execution_time = 300
max_input_vars = 5000
opcache.memory_consumption = 256M
opcache.max_accelerated_files = 20000
realpath_cache_size = 8192K
```

### MySQL Settings
```
innodb_buffer_pool_size = 4G
innodb_buffer_pool_instances = 4
max_connections = 200
table_open_cache = 4000
max_allowed_packet = 256M
innodb_log_file_size = 256M
```

## Backup & Restore

### Backup Your Databases
```bash
cd C:\xampp\mysql\bin
.\mysqldump.exe -u root --all-databases > backup.sql
```

### Restore Databases
```bash
.\mysql.exe -u root < backup.sql
```

### Project Files
Your projects in `htdocs/` are NOT included in this repository.
Each project should maintain its own Git repository.

## Troubleshooting

### Port Conflicts

**MySQL Port 3306 in use:**
```powershell
netstat -ano | findstr :3306
```
Stop conflicting service or change MySQL port in `my.ini`

**Apache Port 80 in use:**
Check for IIS, Skype, or other web servers using port 80

### Service Won't Start

**MySQL fails to start:**
1. Check `C:\xampp\mysql\data\*.err` log files
2. Verify data directory is initialized
3. Check Windows Event Viewer

**Apache fails to start:**
1. Check `C:\xampp\apache\logs\error.log`
2. Verify no other web servers running
3. Test config: `httpd.exe -t`

### Permission Issues

Run XAMPP Control Panel as Administrator if services fail to start/stop.

## What's Excluded from Git

This repository excludes:
- Database files (`mysql/data/*`)
- Log files (`apache/logs/*`, `mysql/data/*.log`)
- Temporary files (`tmp/*`)
- Your projects (`htdocs/*`)
- Backup files
- Session data

See `.gitignore` for complete list.

## Upgrading

### Update PHP
Replace `C:\xampp\php\` contents and restore custom `php.ini` settings

### Update phpMyAdmin
Download latest version and restore `config.inc.php`

### Update MySQL
Backup databases, replace MySQL binaries, restore data

## Performance Tips

1. **Enable OPcache preloading** for Laravel/Symfony apps
2. **Use Redis/Memcached** for session storage in production
3. **Enable Gzip compression** in Apache for faster page loads
4. **Optimize MySQL queries** using EXPLAIN and slow query log
5. **Use HTTP/2** by enabling mod_http2 in Apache

## Security Recommendations

For production use:
1. Change all default passwords
2. Enable SSL/HTTPS
3. Configure firewall rules
4. Disable directory listing
5. Enable MySQL authentication plugin
6. Use prepared statements in code
7. Keep software updated

## Credits

- Base XAMPP by Apache Friends
- MySQL 8.0 by Oracle Corporation
- phpMyAdmin by The phpMyAdmin Team
- Custom optimizations and integration by ProgrammerNomad

## License

XAMPP components retain their original licenses.
Custom configurations and documentation: MIT License

## Support

For issues specific to this custom build:
- GitHub Issues: https://github.com/ProgrammerNomad/Custom-Xampp-With-MySQL-8

For XAMPP general questions:
- XAMPP Forums: https://community.apachefriends.org

## Changelog

### v1.0.0 (2026-02-09)
- Initial release with MySQL 8.0.45
- PHP optimizations (OPcache, 1GB memory)
- Upgraded phpMyAdmin to 5.2.3
- MySQL performance tuning for 16GB systems
- Apache security enhancements
- Complete documentation

---

**Built with performance in mind. Optimized for development and production.**
