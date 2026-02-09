# QUICK START GUIDE
## Custom High-Performance XAMPP with MySQL 8.0

### First Time? Start Here!

This is a CUSTOM, OPTIMIZED XAMPP - not the default installation!

---

## 🚀 Quick Setup (3 Steps)

### Step 1: Initialize MySQL (First time only)
Open PowerShell as Administrator:
```powershell
cd C:\xampp\mysql\bin
.\mysqld.exe --initialize-insecure --console
```

### Step 2: Start Services
Double-click: `C:\xampp\xampp-control.exe`
- Click "Start" next to Apache
- Click "Start" next to MySQL

### Step 3: Access
Open browser and go to:
- http://localhost (Main page)
- http://localhost/phpmyadmin (Database)
- http://localhost/dashboard/custom-info.php (Build info)

---

## ⚡ What Makes This Special?

✓ **MySQL 8.0.45** (not MariaDB)
✓ **phpMyAdmin 5.2.3** (latest version)
✓ **PHP OPcache enabled** (5-10x faster)
✓ **1GB PHP memory** (handles large apps)
✓ **256MB uploads** (large file support)
✓ **4GB MySQL buffer** (optimized queries)

---

## 📖 Full Documentation

See `README.md` for complete details:
- Installation options
- Configuration settings
- Performance specifications
- Troubleshooting guide
- Security recommendations

---

## ⚠️ Important Notes

1. **Default password is empty** - Change for production!
2. **Projects in htdocs/** are NOT backed up to Git
3. **Database files** are NOT included in Git
4. **Backup your databases regularly:**
   ```
   cd C:\xampp\mysql\bin
   .\mysqldump.exe -u root --all-databases > backup.sql
   ```

---

## 🔧 Troubleshooting

**MySQL won't start?**
- Check if data directory is initialized (Step 1)
- Verify port 3306 is not in use: `netstat -ano | findstr :3306`

**Apache won't start?**
- Check port 80: `netstat -ano | findstr :80`
- Try running as Administrator

**Need help?**
- Check logs: `C:\xampp\apache\logs\error.log`
- Check logs: `C:\xampp\mysql\data\*.err`
- GitHub Issues: https://github.com/ProgrammerNomad/Custom-Xampp-With-MySQL-8/issues

---

## 📊 Build Information

**Build Date:** February 9, 2026
**Built By:** ProgrammerNomad
**GitHub:** https://github.com/ProgrammerNomad/Custom-Xampp-With-MySQL-8

**Software Versions:**
- PHP: 8.2.12
- MySQL: 8.0.45
- Apache: 2.4.x
- phpMyAdmin: 5.2.3

---

**Ready to start building? Fire up XAMPP and enjoy the performance! 🚀**
