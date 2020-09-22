@echo off
youtube-dl -o "C:\Users\Eddy\Desktop\DeanThumbTest\Images\%(title)s.%(ext)s" -a urls.txt --write-thumbnail --skip-download 
pause