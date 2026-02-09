$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Custom XAMPP.lnk")
$Shortcut.TargetPath = "C:\xampp\xampp-control.exe"
$Shortcut.WorkingDirectory = "C:\xampp"
$Shortcut.Description = "Custom High-Performance XAMPP with MySQL 8.0 - Optimized Build"
$Shortcut.Save()

Write-Host "Desktop shortcut created: Custom XAMPP.lnk" -ForegroundColor Green
Write-Host "Description: Custom High-Performance XAMPP with MySQL 8.0" -ForegroundColor Cyan
