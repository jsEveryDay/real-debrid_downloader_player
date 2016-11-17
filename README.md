**1 Click Download Starter or Video Play**
------------------------------------------

What does this do?

When you visit websites that have Real-Debrid supported links an icon will be added next to it.

![alt tag](http://i.imgur.com/AT5dqpJ.png)

  - Click the RD icon to instantly begin downloading
  - Also, unrestricted link will be copied to your clipboard (just in case)
  - *OPTIONAL FEATURE to Play Video*
  - Hold **ALT and Click** the RD button and if video it will start playing with VLC or WMP or... 

**Note:** If you visit  the host directly, ex uploaded.to/file... Pay Attention=> RD button will show up on the top right hand corner. ![alt tag](http://i.imgur.com/hqb0h5U.png)



___
#### **1. Quick n Simple Installation Guide**
- Install one of the following:
 * For Chrome [ViolentMonkey](https://chrome.google.com/webstore/detail/violent-monkey/jinjaccalgkegednnccohejagnlnfdag) or [TamperMonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo)
 * For FireFox [ViolentMonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/) or [TamperMonkey](https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/) 


**Install RealDebrid.js**

1. Whichever program you use, create a new script and **copy/paste** or import **RealDebrid.js**
2. Visit https://real-debrid.com/apitoken and copy your token
3. In RealDebrid.js **replace token** at line 17 > 
`var t = 'APIKEYYY'` with your key >>> `var t = 'xxxxxxxxxxx'`
4. **SAVE** it and its ready to go!

Any website you visit now that has RD links will have a button on the side. 1 click to download anything. >> **Yes, torrent/magnet files too.**
 ___
**Video Player Setup** (optional)

1. Run MediaHandler.reg and click yes
2. Create New Folder on C:\ called "myfolder"
3. Put **MediaHandler.cmd** inside the new folder. Should look like this `C:\myfolder\MediaHandler.cmd`
4. DONE! Now hold the **ALT key and Click** the RD button.

The file will automatically start playing in **Windows Media Player**
___


**2. Advanced Installation**
----------------------------
As an advanced user you'd think twice before running a Reg file or a bat file but let me explain.
The whole setup works using **URI Schema Protocol** which means creating a custom url handler. Ex: **magnet:**? links always open with a specific software you have installed, **tel:** or **mailto:** launches Outlook or whatever.

We create our own link handler using the Reg file. I called it `mh://` which stands for Media Handler. You can call this anything you want that's not in use.

####**1. On the Reg file change the executable path**
```sh
@="\"C:\\myfolder\\MediaHandler.cmd\" \"%1\""
```
Set the path to any directory where you intend to store the cmd file.
**Why do I need the CMD file? Can I just put in VLC's path?**

    Yes you can but here is what will run when executed
    vlc.exe   mh://"http://somelink.com/video.mp4"
	    Failure. Vlc does not recognize mh://
	    
	    Here is how vlc expects the execution.
	vlc.exe   http://somelink.com/video.mp4
		Success.
	So MediaHandler.cmd calls the player and parses the link.

####**2. Change the player to VLC or MPClassic or anything you want.**
```sh
## On the MediaHandler.cmd file change the player path ex:
@cd /d "C:\Program Files\Windows Media Player"
@cd /d "C:\Program Files\VideoLAN\VLC"

>>THEN CHANGE wmplayer to vlc

START wmplayer %url%
START vlc %url%
```
The end.

####*-Yes, you do need a premium real-debrid account.*
I have no affiliation with Real-Debrid nor am I a beneficiary somehow. This was simply done to make life easier. Decided to publish due to the high demand for a simpler solution.

License
----
MIT
