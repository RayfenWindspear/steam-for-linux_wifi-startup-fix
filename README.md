# steam-for-linux_wifi-startup-fix
A simple fix for the issue with Steam on linux starting the wifi on startup.

*DISCLAIMER*


I assume no responsibility for issues relating to this code. It doesn't do anything that could cause problems, but it's better to cover my bases.

This was tested on Ubuntu 14.04 x64. I am assuming the <code>iwconfig</code> command is native to other distributions. I am also assuming that <code>iwconfig | grep -cim1 Tx-Power=off</code> will correctly report wifi status on other distributions. If anyone has a better solution for checking if the wifi is on, please notify me.

*DESCRIPTION*


Simply put, this script checks your wifi status before Steam starts and if it was OFF before, then it turns it back off after Steam has started. This is merely a cheap fix as Steam will still start your wifi as normal, but this script will disable it again before it gets a chance to connect (as far as I know).

*INSTALLATION* 
-If someone comes up with an easier way to do this, please let me know!-


The way I install this is to directly edit the script <code>/usr/bin/steam</code> and add the lines in as noted in the script comments. For readability, I will briefly explain here. Add the first portion of the script to the top of <code>/usr/bin/steam</code> just below the top line (#!...). Add the second portion of the script to the very bottom. You're done!

Please note that with this install method, updates made by the Steam client may overwrite <code>/usr/bin/steam</code> in the process. As such, this would need to be applied again.

*CREDITS*


I am not including any credit info in the script itself because I don't much care to. All I ask is that references to this fix lead back here. Feel free to improve and submit on GitHub. Enjoy :)
