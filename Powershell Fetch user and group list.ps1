## first program to fetch the user and group details

Connect-MgGraph -ClientID "c295f028-2e84-4eea-bf04-61df956e6bed" -TenantId "39a72c80-f8f0-4250-9859-1ef64f92ac91" -CertificateThumbprint "9B4B6699560C5967671BF023002A04BB51DDE9FE" ## Or -CertificateThumbprint instead of -CertificateName

Write-Host "USERS"
Write-Host "*****************************************************"

#list first 10 users list
Get-MgUser -Property "id,DisplayName" -PageSize 20 | Format-Table DisplayName, Id

Write-Host "GROUP"
Write-Host "*****************************************************"

Get-MgGroup -Property "Id, DisplayName" -PageSize 20 | Format-Table DisplayName, Id

Disconnect-Graph

