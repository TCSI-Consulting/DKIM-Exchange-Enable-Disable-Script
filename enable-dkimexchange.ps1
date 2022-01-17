Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn
stop-service MAPILabPop3ConnectorService
enable-TransportAgent "Exchange Dkimsigner"
Restart-Service MSExchangeTransport
start-service MAPILabPop3ConnectorService