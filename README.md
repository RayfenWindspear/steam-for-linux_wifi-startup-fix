# steam-for-linux_wifi-startup-fix
A simple fix (hack) to fix the issue with Steam on linux starting the wifi on startup.

*DESCRIPTION*


Simply put, this script checks your wifi status before Steam starts and if it was OFF before, then it turns it back off after Steam has started. This is merely a hack as Steam will still start your wifi as normal, but this script will disable it again before it gets a chance to connect (as far as I know).

*INSTALLATION* 
-If someone comes up with an easier way to do this, please let me know!-

The way I install this is to directly edit the script <code>/usr/bin/steam</code> and add the lines in as noted in the script comments. For readability, I will briefly explain here. Add the first portion of the script to the top of <code>/usr/bin/steam</code> just below the top line (#!...). Add the second portion of the script to the very bottom. You're done!
