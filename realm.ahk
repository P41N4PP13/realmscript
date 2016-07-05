#NoEnv
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%

SetKeyDelay 0
SetMouseDelay 0
SetTitleMatchMode 2

Suspend on
GroupAdd rotmg, Realm of the Mad God
GroupAdd rotmg, realmofthemadgod
GroupAdd rotmg, AGCLoader
GroupAdd rotmg, Play Realm of the Mad God
GroupAdd rotmg, SwiffOutRunner
GroupAdd rotmg, Adobe Flash Player 22
GroupAdd rotmg, Adobe Flash Player 19
GroupAdd rotmg, fla
WinNotActive()

WinActive()
{
	Suspend Off
	WinWaitNotActive ahk_group rotmg
	{
		WinNotActive()
	}
}
WinNotActive()
{
	Suspend on
	WinWaitActive ahk_group rotmg
	{
		WinActive()
	}
}

; teleports to tptarget (set with ^n)
RButton::
clipboard = /teleport %tptarget%
goto ek

; sends rclick when ctrl+rclick is sent to get the flash context menu
^RButton::
Click right
Return

; sets clipboard and sends off to ek/tk (function to send clipboard using enter/tab key)
F1::
clipboard = EUNorth2 keys
goto tk

F2::
clipboard = Thanks
goto ek

F3::
clipboard = Ready
goto ek

F4::
clipboard = He lives and reigns and conquers the world
goto ek

F5::
clipboard = 
goto ek

F6::
clipboard = TP TP TP 
goto ek

F11::
clipboard = /tutorial
goto ek

F12::
clipboard = /nexustutorial
goto ek

^p::
clipboard = /pause
goto ek

^w::
clipboard = /tell mreyeball stats
goto ek

^s::
clipboard = /server
goto ek

^d::
clipboard = /tell mreyeball mates
goto ek

^a::
clipboard = /tell mreyeball hide my guild
goto ek

::
slot = 2
goto swap

::
slot = 3
goto swap

; ignores the person that shows up when you press tab (last person that /tell you)
^i::
clipboard := "/ignore "
Blockinput, on
Send {tab}{home}^+{Right}^v{enter}
Blockinput, off
Return

; set a teleport target
^n::InputBox, tptarget, Teleport target, Please enter a person to teleport to:

; convert /tp to /teleport in the game chat
:*:/tp::
	ClipSaved := ClipboardAll
	clipboard := "/teleport"
	Blockinput, on
	Send ^a
	Send ^v
	Send {Space}
	Blockinput, off
	Sleep 100
	clipboard := ClipSaved
	ClipSaved := "" ;save memory
Return

; go to the character select
^r::
MouseGetPos, mousePosX, mousePosY
WinGetPos, , , winSizeX, winSizeY, A
Send {Esc}
Loop
{
	ImageSearch, imageLocX, imageLocY, 0, 0, %winSizeX%, %winSizeY%, img\charsel.png
	if ErrorLevel = 1
		continue
	else
		break
}
MouseClick, Left, imageLocX, imageLocY, 1
MouseClick, Left, imageLocX-240, imageLocY, 1 ; back to home is bugged
MouseMove, mousePosX, mousePosY
Return

; sends clipboard to the chat using the enter key
ek:
Blockinput, on
Send {Enter}
Send ^v
Send {Enter}
Blockinput, off
Return

; sends clipboard to the chat using the tab key
tk:
Blockinput, on
Send {Tab}
Send ^v
Send {Enter}
Blockinput, off
Return

; spam in guild
sk:
Blockinput, on
Send g
Send ^v
Send {Enter}
Send g
Send ^v
Send {Delete}
Send {Enter}
Blockinput, off
Return

; swap function
swap:
MouseGetPos, mousePosX, mousePosY
WinGetPos, , , winSizeX, winSizeY, A
ImageSearch, imageLocX, imageLocY, 0, 0, %winSizeX%, %winSizeY%, img\searchimage.png
MouseClick, Left, imageLocX + (44 * slot) + 30, imageLocY - 20, 2
MouseMove, mousePosX, mousePosY
Return

; select all 8 slots while trading
F7::
MouseGetPos, mousePosX, mousePosY
WinGetPos, , , winSizeX, winSizeY, A
ImageSearch, imageLocX, imageLocY, 0, 0, %winSizeX%, %winSizeY%, img\trade.png
Xinc = 0
Yinc = 250
Loop 2
{
	Loop 4
	{
		MouseClick, Left, imageLocX+Xinc, imageLocY-Yinc, 1
		Xinc += 44
	}
	Xinc = 0
	Yinc -= 50
}
MouseMove, mousePosX, mousePosY
return

/*
Login
Made By dg123
Be sure to leave a thanks!
*/
^l::
Gui, Add, Text, x62 y9 w340 h20 +Center, An AutoLogin Script Written In AHK
Gui, Add, Button, x182 y39 w100 h30 , Logout
Gui, Add, Button, x52 y79 w370 h30 , Acc1
Gui, Add, Button, x52 y119 w370 h30 , Acc2
Gui, Add, Button, x52 y159 w370 h30 , Acc3
Gui, Add, Button, x52 y199 w370 h30 , Acc4
Gui, Add, Button, x52 y239 w370 h30 , Acc5
Gui, Add, Button, x52 y279 w370 h30 , Acc6
Gui, Add, Button, x52 y319 w370 h30 , Acc7
Gui, Add, Button, x52 y359 w370 h30 , Acc8
Gui, Show, w479 h500, Login
Return


ButtonLogout:
IfWinExist, Adobe Flash Player
{
    WinActivate 
	MouseGetPos, mousePosX, mousePosY
click 755, 55
MouseMove, mousePosX, mousePosY
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return

   ButtonAcc1:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc2:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc3:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc4:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc5:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc6:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc7:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return
   
   ButtonAcc8:
IfWinExist, Adobe Flash Player
{
    WinActivate 
Email = 
Password = 
goto Login
}
else
   MsgBox, 16, Error, RotMG Client Not Found, 1
   Return

Login:
	MouseGetPos, mousePosX, mousePosY
click 755, 55
Send %Email%
Send {tab}
Send %Password%
Send {Enter}
MouseMove, mousePosX, mousePosY
Reload

!x::ExitApp

GuiClose:
Return
