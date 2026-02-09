Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create main form
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Custom High-Performance XAMPP'
$form.Size = New-Object System.Drawing.Size(600,450)
$form.StartPosition = 'CenterScreen'
$form.FormBorderStyle = 'FixedDialog'
$form.MaximizeBox = $false
$form.BackColor = [System.Drawing.Color]::FromArgb(45, 45, 48)
$form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("$PSScriptRoot\xampp-control.exe")

# Title Label
$titleLabel = New-Object System.Windows.Forms.Label
$titleLabel.Location = New-Object System.Drawing.Point(10,20)
$titleLabel.Size = New-Object System.Drawing.Size(560,40)
$titleLabel.Text = 'CUSTOM HIGH-PERFORMANCE XAMPP'
$titleLabel.Font = New-Object System.Drawing.Font('Arial',16,[System.Drawing.FontStyle]::Bold)
$titleLabel.ForeColor = [System.Drawing.Color]::White
$titleLabel.TextAlign = 'MiddleCenter'
$form.Controls.Add($titleLabel)

# Subtitle Label
$subtitleLabel = New-Object System.Windows.Forms.Label
$subtitleLabel.Location = New-Object System.Drawing.Point(10,60)
$subtitleLabel.Size = New-Object System.Drawing.Size(560,25)
$subtitleLabel.Text = 'MySQL 8.0 Edition - Optimized for Performance'
$subtitleLabel.Font = New-Object System.Drawing.Font('Arial',11)
$subtitleLabel.ForeColor = [System.Drawing.Color]::LightGray
$subtitleLabel.TextAlign = 'MiddleCenter'
$form.Controls.Add($subtitleLabel)

# Features Panel
$featuresPanel = New-Object System.Windows.Forms.Panel
$featuresPanel.Location = New-Object System.Drawing.Point(20,100)
$featuresPanel.Size = New-Object System.Drawing.Size(540,200)
$featuresPanel.BackColor = [System.Drawing.Color]::FromArgb(30, 30, 32)
$form.Controls.Add($featuresPanel)

# Features Text
$featuresText = @"
KEY FEATURES:

✓ MySQL 8.0.45 (Latest stable version)
✓ PHP OPcache Enabled - 5-10x faster execution
✓ 1GB PHP Memory - Handle large applications
✓ 4GB InnoDB Buffer Pool - Optimized queries
✓ phpMyAdmin 5.2.3 - Latest with all features
✓ 256MB Upload/Post Size - Large file support
✓ Enhanced Apache Performance
✓ Production-ready security settings

Built by: ProgrammerNomad
Build Date: February 9, 2026
"@

$featuresLabel = New-Object System.Windows.Forms.Label
$featuresLabel.Location = New-Object System.Drawing.Point(20,10)
$featuresLabel.Size = New-Object System.Drawing.Size(500,180)
$featuresLabel.Text = $featuresText
$featuresLabel.Font = New-Object System.Drawing.Font('Consolas',9)
$featuresLabel.ForeColor = [System.Drawing.Color]::LightGreen
$featuresPanel.Controls.Add($featuresLabel)

# Start Button
$startButton = New-Object System.Windows.Forms.Button
$startButton.Location = New-Object System.Drawing.Point(150,320)
$startButton.Size = New-Object System.Drawing.Size(140,40)
$startButton.Text = 'Start Control Panel'
$startButton.Font = New-Object System.Drawing.Font('Arial',10,[System.Drawing.FontStyle]::Bold)
$startButton.BackColor = [System.Drawing.Color]::FromArgb(0, 122, 204)
$startButton.ForeColor = [System.Drawing.Color]::White
$startButton.FlatStyle = 'Flat'
$startButton.Add_Click({
    Start-Process -FilePath "$PSScriptRoot\xampp-control.exe"
    $form.Close()
})
$form.Controls.Add($startButton)

# Docs Button
$docsButton = New-Object System.Windows.Forms.Button
$docsButton.Location = New-Object System.Drawing.Point(310,320)
$docsButton.Size = New-Object System.Drawing.Size(140,40)
$docsButton.Text = 'View Documentation'
$docsButton.Font = New-Object System.Drawing.Font('Arial',10)
$docsButton.BackColor = [System.Drawing.Color]::FromArgb(60, 60, 62)
$docsButton.ForeColor = [System.Drawing.Color]::White
$docsButton.FlatStyle = 'Flat'
$docsButton.Add_Click({
    Start-Process -FilePath "$PSScriptRoot\README.md"
})
$form.Controls.Add($docsButton)

# Footer Label
$footerLabel = New-Object System.Windows.Forms.Label
$footerLabel.Location = New-Object System.Drawing.Point(10,380)
$footerLabel.Size = New-Object System.Drawing.Size(560,20)
$footerLabel.Text = 'This is a custom optimized build - NOT default XAMPP'
$footerLabel.Font = New-Object System.Drawing.Font('Arial',8)
$footerLabel.ForeColor = [System.Drawing.Color]::Gray
$footerLabel.TextAlign = 'MiddleCenter'
$form.Controls.Add($footerLabel)

# Show Form
$form.ShowDialog()
