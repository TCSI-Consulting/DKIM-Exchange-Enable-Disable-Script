# DKIM-Exchange
Scripts for automating Transport Agent status for DKIM-Exchange https://github.com/Pro/dkim-exchange when doing updates on an Exchange Server

According to the Updating Settings for DKIM-Exchange (https://github.com/Pro/dkim-exchange/wiki/Updating-Upgrading) you must open the Executable, go to Configure, and disable the DKIM Signer Transport Agent before updating an Exchange Server with DKIM-Exchange installed on it.

I created these two scripts to automate the process of disabling the Transport Agent.  

NOTE:  Has to be run from an elevated PowerShell or Exchange Management Shell, but will run from either as PowerShell imports the Exchange Modules

The "Disable" script sets the "Exchange dkimsigner" Transport agent to disabled, then checks the MSExchangeTransport Service for any dependencies and stops those.  Once any dependencies are stopped, then it restarts the MSExchangeTransport Service and restarts any dependent services.

The "Enable" script does the reverse:  Sets the "Exchange dkimsigner" Transport agent to enabled, then checks the MSExchangeTransport Service for any dependencies and stops those.  Once any dependencies are stopped, then it restarts the MSExchangeTransport Service and restarts any dependent services.
