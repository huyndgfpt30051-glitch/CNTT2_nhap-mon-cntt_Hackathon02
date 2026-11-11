#Script: tong_hop.ps1
# Tac gia : NGUYỄN ĐỨC GIA HUY 
# NGAY TAO : 11/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" >logs/tong_hop.txt
Get-content logs/request.log | select-string "status=404" >>logs/tong_hop.txt
get-content logs/request.log  | select-string "status=500" |measure-object >>logs/tong_hop.txt
write-host "hoan thanh!"