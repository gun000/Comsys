mkdir C:\temp


ipconfig |out-File -FilePath 'C:\temp\.\ip.txt'
netstat |out-File -FilePath 'C:\temp\.\stat.txt'
whoami |out-File -FilePath 'C:\temp\.\wai.txt'
'open 192.168.0.40 21
user "Administrator" "Sentinel1!"
lcd C:\temp
put FTPTEST.zip' | Out-File -FilePath 'C:\temp\.\script.txt' #FTP 접속 파일 생성



cd C:\temp
Compress-Archive -Path "C:\Temp" "C:\temp\FTPTEST.zip" -CompressionLevel optimal # 특정폴더 압축




ftp -v -n -i -d -s:"C:\temp\script.txt" #FTP