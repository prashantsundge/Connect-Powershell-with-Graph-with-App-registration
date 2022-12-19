$certname = "{certificateName}"    ## Replace {PowershellConnectCert}
$cert = New-SelfSignedCertificate -Subject "CN=$certname" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256


Export-Certificate -Cert $cert -FilePath "E:\Microsoft Graph\PowershellGraph_Code\$certname.cer"   ## Specify your preferred location


Connect-MgGraph -ClientID "c295f028-2e84-4eea-bf04-61df956e6bed" -TenantId "39a72c80-f8f0-4250-9859-1ef64f92ac91" -CertificateThumbprint "9B4B6699560C5967671BF023002A04BB51DDE9FE" ## Or -CertificateThumbprint instead of -CertificateName