Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

enable-TransportAgent "Exchange Dkimsigner"

$MSETD = (get-service MSExchangeTransport).dependentservices
Write-Host "`r`nStopping Services`r`n-----------------`r`n" -f Yellow
foreach ($service in $MSETD){
Write-Host "`r`nAnalyzing $($service.name)" -f Yellow
    if($service.startmode -eq "auto" -or $service.status -eq "Running"){
        Write-Host "Stopping $($service.name)"
        stop-service $service.name
} 
else{
"$($service.name) is $($service.state) with the startmode: $($service.startmode)"
}
}

Restart-Service MSExchangeTransport

$MSETD = (get-service MSExchangeTransport).dependentservices
foreach ($service in $MSETD){
Write-Host "`r`nAnalyzing $($service.name)" -f Yellow
if($service.startmode -eq "auto" -or $service.status -eq "Stopped"){
"Starting $($service.name)"
start-service $service.name
} 
else{
"$($service.name) is $($service.state) with the startmode: $($service.startmode)"
}
}
