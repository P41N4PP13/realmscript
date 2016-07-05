Realmscript
===========

An AHK (AutoHotKey) script for Realm of the Mad God

Among the features:
* Ctrl+right click sends right click
* Several text send hotkeys
* Ignore hotkey to ignore bots and shit (ignores the person who sent you a tell most recently)
* Teleport target (ctrl+n to set, Right Mouse Button to use)
* Pause hotkey
* "/tell mreyeball (stuff here)" hotkeys
* Nexus Tutorial hotkey
* Weapnswap hotkeys (only works @ low res and with contextual click)
* /tp is converted to /teleport 
* Select all slots when trading
* Hotkey for charselection
* Ctrl+L for autologin on the frontpage

Some functionality only works at low resolution, if you want it working, do it yourself.

Credit to BMJ for some stuff from QuickSpeech and to TKGP for the item swap. Also to Kalle and Painapple for putting everything
together.

=========================================================================================================================
ESSENTIAL DOWNLOADS:
AutoHotKey: https://autohotkey.com/
Notepad++: https://notepad-plus-plus.org/

FIRST EDIT (IMPORTANT):
1. Rightclick realm.ahk and click "Edit with Notepad++".
2. If you use flashplayer edit the version in line 16 or 17 to your flashplayer version.
3. If you want to use Autologin go down to line 220ff and You will see "Acc1", "Acc2" etc.
   Scoll down and find where it says "Email = " and "Password = " (e.g. in line 248f and 272f) and paste ur Account Information there (there is no way I could find out what you type there it is local at your computer)
   Continue and you may autologin with up to 8 accounts when you press Ctrl+L in homescreen.
4. If you want you can edit the Hotkey lines, too. Starting at line 47 to 97. (e.g. F5 is unused when you download it)
5. To use weaponswap go to line 101 and 105 and replace "^1" and "^2" with the hotkey you want.
   (slot = 2 means weaponslot 7 is swapped ingame and slot = 3 is slot 8 ingame)
6. Tip: In autohotkey ^ = ctrl and + = shift

HOW TO USE:
Just put the folder somewhere and open realm.ahk with AutoHotKey and you are ready to go!
If you are new to AutoHotKey just activate it and press e.g. F1 to F12 in game and see what happens!
Have fun!
