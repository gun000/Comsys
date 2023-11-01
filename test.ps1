$certPath = "C:\windows\temp\hr.cer" 
$store = New-Object System.Security.Cryptography.X509Certificates.X509Store -ArgumentList "Root", "LocalMachine"  # 루트 인증 기관 저장소 열기
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2 -ArgumentList $certPath  # 인증서 객체 생성
$store.Open("ReadWrite")  # 저장소 열기
$store.Add($cert)  # 인증서 추가
$store.Close()  # 저장소 닫기