<?php
$phostname = file_get_contents('http://169.254.169.254/latest/meta-data/public-hostname/');
$pipaddress = file_get_contents('http://169.254.169.254/latest/meta-data/public-ipv4/');
$lhostname = file_get_contents('http://169.254.169.254/latest/meta-data/local-hostname/');
$lipaddress = file_get_contents('http://169.254.169.254/latest/meta-data/local-ipv4/');
$azone = file_get_contents('http://169.254.169.254/latest/meta-data/placement/availability-zone/');

echo "<HTML>
<BODY>
<CENTER>
<H1><FONT COLOR=\"green\">ITProTV Sample Page</FONT></H1>
<H2><B>Public Hostname:</B><FONT COLOR=\"blue\"> $phostname</FONT></H2>
<H2><B>Public IP:</B><FONT COLOR=\"blue\"> $pipaddress</FONT></H2>
<H2><B>Local Hostname:</B><FONT COLOR=\"blue\"> $lhostname</FONT></H2>
<H2><B>Local IP:</B><FONT COLOR=\"blue\"> $lipaddress</FONT></H2>
<H2><B>Availability Zone:</B><FONT COLOR=\"blue\"> $azone</FONT></H2>
<BR><HR><BR>
<P>This server is currently online and the Apache process is serving up web pages.</P>
<br>
<img src="logo.png">
</CENTER>
</BODY>
</HTML>";
?>
