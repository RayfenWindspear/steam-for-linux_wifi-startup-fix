# steam-for-linux_wifi-startup-fix

***============================================***

***==DEPRECATED. THIS HAS BEEN FIXED BY VALVE==***

***============================================***

A simple fix for the issue with Steam on linux starting the wifi on startup. For https://github.com/ValveSoftware/steam-for-linux/issues/3424

***BEFORE READING ON***


A much more elegant solution was posted after mine by AnAkIn1 here: https://github.com/ValveSoftware/steam-for-linux/issues/3424#issuecomment-76155772

This solution prevents Steam from modifying the network status at all. This repo will be left intact for archival purposes as I am personally using this same process to prevent my laptop from bringing wifi and bluetooth online after waking from sleep.



***DISCLAIMER***


I assume no responsibility for issues relating to this code. It doesn't do anything that could cause problems, but it's better to cover my bases. I am also in no way affiliated with Steam or Valve.

This was tested on Ubuntu 14.04 x64. I am assuming the <code>iwconfig</code> command is native to other distributions. I am also assuming that <code>iwconfig | grep -cim1 Tx-Power=off</code> will correctly report wifi status on other distributions. If anyone has a better solution for checking if the wifi is ON, please notify me.


***DESCRIPTION***


Simply put, this script checks your wifi status before Steam starts and if it was OFF before, then it turns it back OFF after Steam has started. If it was ON, then it doesn't do anything. This is merely a cheap fix as Steam will still start your wifi as normal, but this script will disable it again before it gets a chance to connect (as far as I know).

As a note, don't feel too put off by the <code>rfkill</code> command used in my script. I checked a number of places to be sure, and all of them said that it effectively does the same thing as disabling the wifi using the point and click method. Meaning, it doesn't stop you from simply turning it back on again.


***INSTALLATION***
-If someone comes up with an easier way to do this, please let me know!-


Before you "install" it, if you want you can download the whole script and run it to test if it will work. Regardless of your current wifi status, it won't actually do anything. This simply makes sure that adding it won't cause a "command not found" error. 

The way I install this is to directly edit the script <code>/usr/bin/steam</code> and add the lines in as noted in the script comments, but make a backup first. For readability, I will briefly explain here. Add the first portion of the script to the top of <code>/usr/bin/steam</code> just below the top line (#!...). Add the second portion of the script to the very bottom. You're done!

Please note that with this install method, updates made by the Steam client may overwrite <code>/usr/bin/steam</code> in the process. As such, this would need to be applied again.


***CREDITS***


I am not including any credit info in the script itself because I don't much care to. All I ask is that references to this fix lead back here. Feel free to improve and submit on GitHub. Enjoy :)
