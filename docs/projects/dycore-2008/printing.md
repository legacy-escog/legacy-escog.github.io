<h1 class="title">Printing</h1>

<div id="cog_post_body">
    <div id="cog_post_body">
        <p>Printing troubleshooting contact: Katrina Smith, ext.1847, cell: 303-710-6125, kls@ucar.edu</p>
<h1><a name="Printing-WINDOW'SPrinteronGuestWireless"></a>WINDOW'S Printer on Guest Wireless</h1>
<ul>
<li>From Start Menu, select Printer and Faxes</li>
<li>Start the Add Printer Wizard 	  
<ul>
<li>Select Next</li>
<li>Select Local Printer</li>
<li>Uncheck Automatic Detect...</li>
<li>Select Next</li>
<li>Select Create New Port</li>
<li>Select Standard TCP/IP port</li>
<li>Select Next 		  
<ul>
<li>The Add Standard TCP/IP Port Wizard will begin</li>
<li>Select Next</li>
<li>Printer Name: eads.guest.ucar.edu</li>
<li>Port Name will fill in automatically (eads.guest.ucar.edu)</li>
<li>Select Next</li>
<li>If it doesn't detect port automatically, select standard HP Jet Direct</li>
<li>Select Next</li>
<li>Click Finish to complete port setup</li>
</ul>
</li>
<li>Select HP Laserjet 5M</li>
<li>Take default settings and select to the test print option and wizard exits</li>
</ul>
</li>
</ul>
<ul>
<li>Final Wizard screen shows something similar to: 	  
<ul>
<li>SNMP: No</li>
<li>Protocol: RAW, Port 9100</li>
<li>Device: eads.guest.ucar.edu</li>
<li>Adapter Type: HP Jet Direct</li>
</ul>
</li>
</ul>
<p>This printer is located in library carrel #5.<br /> Find the spiral staircase in the center of the library and when you reach the top turn right.</p>
<h1><a name="Printing-LinuxPrinteronGuestWireless"></a>Linux Printer on Guest Wireless</h1>
<ul>
<li>Install CUPS 	  
<ul>
<li>Fedora - already installed</li>
<li>Ubuntu - sudo apt-get install cupsys</li>
</ul>
</li>
<li>Set up configuration file for CUPS 	  
<ul>
<li>Create /etc/cups/client.conf</li>
<li>Add this line: ServerName cups-server.scd.ucar.edu</li>
</ul>
</li>
<li>Restart CUPS 	  
<ul>
<li>Fedora - /sbin/service restart cups</li>
<li>Ubuntu - /etc/init.d/cupsys restart</li>
</ul>
</li>
<li>Make montrose.scd.ucar.edu the default printer</li>
</ul>
<h1><a name="Printing-MacPrinteronGuestWireless"></a>Mac Printer on Guest Wireless</h1>
<ul>
<li>modify /etc/client.conf for the ServerName:<br /> ServerName cups-server.scd.ucar.edu 	  
<ul>
<li>On some systems this file can be found at /private/etc/ or /private/etc/cups/</li>
</ul>
</li>
<li>A reboot may be required but it wasn't necessary on my system (OSX 10.4.11)</li>
</ul>
<ul>
<li>Montrose should show up as a selection in the print dialog box</li>
</ul>
</div> <!--// end div id=cog_post_body //-->
