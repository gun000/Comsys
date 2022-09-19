mkdir C:\temp
'open 192.168.0.40 21
user "Administrator" "Sentinel1!"
lcd C:\temp
put FTPTEST.zip' | Out-File -FilePath 'C:\temp\.\script.txt' #FTP 접속 파일 생성

cd C:\temp
Compress-Archive -Path "C:\Users\Gunyoung\Desktop\FTPTEST" "C:\temp\FTPTEST.zip" -CompressionLevel optimal # 압축
ftp -v -n -i -d -s:"C:\temp\script.txt" #FTP