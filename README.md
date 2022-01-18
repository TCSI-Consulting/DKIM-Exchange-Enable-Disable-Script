# DKIM-Exchange
Scripts for DKIMSigner

According to the Updating Settings for DKIM-Exchange (https://github.com/Pro/dkim-exchange/wiki/Updating-Upgrading) you must open the Executable, go to Configure, and disable the DKIM Signer Transport Agent before updating an Exchange Server with DKIM-Exchange installed on it.

I created these two scripts to automate the process of disabling the Transport Agent.  

The "Disable" script sets the "Exchange dkimsigner" Transport agent to disabled, then checks the MSExchangeTransport Service for any dependencies and stops those.  Once any dependencies are stopped, then it restarts the MSExchangeTransport Service and restarts any dependent services.

The "Enable" script does the reverse:  Sets the "Exchange dkimsigner" Transport agent to enabled, then checks the MSExchangeTransport Service for any dependencies and stops those.  Once any dependencies are stopped, then it restarts the MSExchangeTransport Service and restarts any dependent services.
