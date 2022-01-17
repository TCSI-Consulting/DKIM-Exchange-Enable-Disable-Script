Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn
stop-service MAPILabPop3ConnectorService
Disable-TransportAgent "Exchange Dkimsigner" -confirm:$false
Restart-Service MSExchangeTransport
start-service MAPILabPop3ConnectorService