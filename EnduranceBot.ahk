#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Clipboard :=
completion := false
fullbreak := false
collectCounter := 0 
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
return
;end of auto-exec section


; Labels and functions



miniCheckup:
Gosub, checkFortnite
Gosub, checkDiscord
return

checkup:
Gosub, checkFortnite
Gosub, checkDiscord
If (checkCompletion()) {
	completion := true
	;MsgBox, checkup success
	}else{
	completion := false
	}
return

depositMats:
Gosub, checkFortnite
Send, {w down}
Sleep, 700
Send, {w up}{s down}
Sleep, 1000
Send, {s up}{w down}
Sleep, 1200
Send, {w up}{s down}
Sleep, 350
Send, {s up}{d down}
Sleep, 525
Send, {d up}{WheelUp down}
Sleep, 1500
Send, {WheelUp up}
MouseMove, 1348, 342
Click
Sleep, 300
Loop, 3
{
Send, t
Sleep, 100
MouseMove, 807, 657
Sleep, 100
Click
Sleep, 100
}
MouseMove, 1566, 867
Click
Click
Send, {a down}
Sleep, 575
Send, {a up}{w down}
Sleep, 300
Send, {w up}{s down}
Sleep, 400
Send, {Space}
Sleep, 1800
Send, {s up}
return

collectSupply:
Gosub, checkFortnite
Send, {w down}
Sleep, 1200
Send, {w up}{a down}
Sleep, 4000
Send, {a up}{s down}{d down}
Sleep, 225
Send, {s up}{d up}
Gosub, resetScreen
Sleep, 500
MouseMove, 0, 400,, R
Send, 6
Sleep, 500
Click
Sleep, 2250
Send, {WheelUp}{w down}{a down}
Sleep, 450
Send, {w up}{a up}{d down}
Sleep, 600
Send, {d up}{s down}
Sleep, 600
Send, {s up}{a down}
Sleep, 600
Send, {w down}
Sleep, 600
Send, {a up}{w up}{WheelUp up}{d down}
Sleep, 4500
Send, {d up}{a down}
Sleep, 450
Send, {a up}{s down}
Sleep, 2100
Send, {s up}{w down}
Sleep, 700
Send, {w up}{s down}
Sleep, 1075
Send, {s up}
Gosub, resetScreen
return

collectMats:
Gosub, checkFortnite
Gosub, resetScreen
MouseMove, 0, 110,, R
Send, {w down}
Sleep, 700
Send, {w up}{WheelUp down}
Sleep, 1500
Send, {WheelUp up}{s down}
Sleep, 1000
Send, {s up}{w down}
Sleep, 700
Send {w up}
Sleep, 200
Send, {s down}
Sleep, 1155
Send, {s up}
Gosub, resetScreen
return



resetScreen:
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Send, {Esc}
Sleep, 50
MouseMove, A_ScreenWidth/2, A_ScreenHeight/2
Sleep, 50
Send, {Esc}
return

setSens:
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, checkFortnite
Send, {Esc}
Sleep, 100
MouseMove, 1781, 125
Click
MouseMove, 1057, 40
Click
MouseMove, 949, 180
Click
MouseMove, 949, 219
Click
Send, a
MouseMove, 1672, 1044
Click
return

setTeleporter:
Gosub, checkFortnite
Send, {a down}
Sleep, 1250
Send, {a up}{w down}
Sleep, 4000
Send, {w up}{d down}
Sleep, 4000
Send, {w down}
Sleep, 1000
Send, {d up}{w down}{a down}
Sleep, 1030
Send, {w up}{a up}{s down}
Sleep, 255
Send, {s up}
Send, 7
Sleep, 1500
Click
Sleep, 1800
Send, {WheelUp down}
Sleep, 1000
Send, {WheelUp up}{RButton}
Send, {RButton}
Send, {a down}
Sleep, 5000
Send,  {a up}{s down}
Sleep, 3000
Send, {s up}{a down}
Sleep, 3000
Send, {a up}{s down}
Sleep, 6000
Send, {s up}{d down}
Sleep, 2000
Send, {d up}{w down}
Sleep, 12000
Send, {w up}{a down}
Sleep, 1000
Send, {a up}{s down}{d down}
Sleep, 300
Send, {s up}{d up}
Click
Send, {d down}
Sleep, 900
Send, {d up}{w down}
Sleep, 650
Send, {w up}{a down}
Sleep, 400
Send, {a up}j
Sleep, 100
Send, {Esc}
Sleep, 100
Send, j
Sleep, 100
Send, 2
Sleep, 100
Send, 1
Sleep, 500
Click
Sleep, 500
Send, {a down}{w down}
Sleep, 400
Send, {a up}
Sleep, 2000
Send, {w up}{s down}
Sleep, 150
Send, {Space}
Sleep, 1875
Send, {s up}
return

activateFortnite:
Gosub, checkFortnite
WinWait ahk_exe "Fortnite"
WinActivate ahk_exe "Fortnite"
WinWaitActive ahk_exe "Fortnite"
WinMaximize, ahk_exe "Fortnite"
return

stopBroadcast:
Gosub, checkFortnite
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
IfWinExist ahk_exe Discord.exe
	winactivate ahk_exe Discord.exe
else
	run, "C:\Users\laser\AppData\Local\Discord\app-1.0.9007\Discord.exe"
WinWait ahk_exe Discord.exe
WinActivate ahk_exe Discord.exe
WinWaitActive ahk_exe Discord.exe
WinMaximize, ahk_exe Discord.exe

MouseMove, 1230, 509
Click
WinMinimize, ahk_exe Discord.exe
Gosub, activateFortnite
return


broadcast:
Gosub, checkFortnite
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
IfWinExist ahk_exe Discord.exe
	winactivate ahk_exe Discord.exe
else
	run, "C:\Users\laser\AppData\Local\Discord\app-1.0.9007\Discord.exe"
WinWait ahk_exe Discord.exe
WinActivate ahk_exe Discord.exe
WinWaitActive ahk_exe Discord.exe
WinMaximize, ahk_exe Discord.exe

MouseMove, 43, 57
Click
MouseMove, 152, 183
Click
MouseMove, 1538, 52
Click
MouseMove, 1087, 220
Click
MouseMove, 898, 436
Click
MouseMove, 872, 520
Click
MouseMove, 1108, 819
Click
WinMinimize, ahk_exe Discord.exe
Gosub, activateFortnite

return

collectRewards:
Gosub, checkFortnite
Loop, 7
{
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
MouseMove, 976, 1024
Sleep, 400
Click
MouseMove, 1656, 1016
Sleep, 400
Click
}
return

checkDiscord:

Gosub, checkFortnite
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event

IfWinExist ahk_exe Discord.exe
	winactivate ahk_exe Discord.exe
else
	run, "C:\Users\laser\AppData\Local\Discord\app-1.0.9007\Discord.exe"
WinWait ahk_exe Discord.exe
WinActivate ahk_exe Discord.exe
WinWaitActive ahk_exe Discord.exe
WinMaximize, ahk_exe Discord.exe

Clipboard :=
MouseMove, 228, 231
Click
MouseMove, 395, 957
Click
MouseMove, 605, 896
Click
Click
Send, ^c
If (Clipboard = "EnduranceBot"){
	Clipboard := ClipboardSaved
	WinMinimize, ahk_exe Discord.exe
	return
}else{
	Clipboard :=
	MouseMove, 400, 982
	Click
	Click
	Send, ^c
}


WinMinimize, ahk_exe Discord.exe


If (Clipboard = ClipboardSaved){
	ClipboardSaved := Clipboard
	return
}else if (Clipboard = "Exit"){
	ClipboardSaved := Clipboard
	ExitApp
}else if (Clipboard = "Broadcast"){
	ClipboardSaved := Clipboard
	Gosub, broadcast
}else if (Clipboard = "Stop"){
	ClipboardSaved := Clipboard
	Gosub, stopBroadcast
}
return



checkFortnite:
If WinExist("ahk_exe C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"){
WinActivate ahk_exe "Fortnite"
WinMaximize, ahk_exe "Fortnite"
}else{
MsgBox, The script has paused because Fortnite crashed.
}
return

checkCompletion(){
Gosub, checkFortnite
PixelGetColor, TopLeft, 13, 10, Slow
PixelGetColor, TopRight, 1809, 3, Slow
PixelGetColor, BotLeft, 715, 954, Slow
PixelGetColor, BotRight, 1905, 1063, Slow
;MsgBox, %TopLeft%, %TopRight%, %BotLeft%, %BotRight%
If (TopLeft = "0x000000" && TopRight = "0x000000" && BotLeft = "0x000000" && BotRight = "0x000000"){
return true
}else{
return false


}
}
startHomebase:
Gosub, checkFortnite
SetMouseDelay, 75
MouseMove, 635, 103
Click
MouseMove, 117, 257
Loop, 3
{
Click
}
MouseMove, 162, 257
Click
MouseMove, 1514, 942
Click
MouseMove, 967, 914
Click
MouseMove, 1587, 916
Click
MouseMove, 1144, 950
Click
Sleep, 30000
MouseMove, 349, 343
Loop, 9
{
Click
}
MouseMove, 450, 347
Loop, 2
{
Click
}
MouseMove, 1576, 925
Click
return

startEndurance:
Gosub, checkFortnite
SetMouseDelay, 75
Send, {w down}
Sleep, 4250
Send, {w up}{d down}
Sleep, 5000
Send, {d up}{s down}
Sleep, 2500
Send, {s up}
Send, {d up}{s down}
Sleep, 2500
Send, {s up}{d down}
Sleep, 1000
Send, {d up}
Send, {WheelUp down}
Sleep, 500
Send, {WheelUp up}
Sleep, 2000
MouseMove, 578, 507
Click
Sleep, 200
MouseMove, 958, 728
Click
return


startMission:
Gosub, startHomebase
Gosub, miniCheckup
;Sleep, 120000
Loop, 2
	{
	Sleep, 60000
	Gosub, miniCheckup
	}
Gosub, startEndurance
Gosub, setSens
Gosub, miniCheckup
Gosub, setTeleporter
Gosub, miniCheckup
return

; Scripts

;grabs mouse coordinates
^k::
SendMode, Event
KeyWait, LButton, D
MouseGetPos, X, Y
KeyWait, b, D
Send, {Backspace}%X%, %Y%
return

 
;gets the color of the pixel at the x and y coordinate in the pixelgetcolor line
^g::
PixelGetColor, Color, 1724, 415, Slow
KeyWait, b, D
Send,{Backspace}%Color%
return

;grabs the color at the mouse coordinates
^l::
SendMode, Event
KeyWait, LButton, D
MouseGetPos, X, Y
PixelGetColor, Color, %X%, %Y%, Slow
KeyWait, b, D
Send,{Backspace}%X%, %Y% 
Send,, {Backspace}%Color%
return


!0::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, startHomebase
return

!9::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, startEndurance
return

!8::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, startMission
return

!7::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, checkFortnite
return

!6::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, checkFortnite
MsgBox, Please make sure your have the right discord account logged in and are on the right starting page. For more info please view documentation video
IfWinExist ahk_exe Discord.exe
	winactivate ahk_exe Discord.exe
else
	run, "C:\Users\laser\AppData\Local\Discord\app-1.0.9007\Discord.exe"
WinWait ahk_exe Discord.exe
WinActivate ahk_exe Discord.exe
WinWaitActive ahk_exe Discord.exe
WinMaximize, ahk_exe Discord.exe


Clipboard :=
MouseMove, 228, 231
Click
MouseMove, 400, 982
Click
Click
Send, ^c
ClipboardSaved := Clipboard
WinMinimize, ahk_exe Discord.exe

Gosub, checkDiscord
return

!5::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, collectRewards
return

!4::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
If (checkCompletion()){
	MsgBox, Success
}else{
	MsgBox, Failure
}
return

!3::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Clipboard :=
MouseMove, 400, 982
Click
Click
Send, ^c
If (Clipboard = "Ye"){
	MsgBox, success
}else{
	
	MsgBox, failure
}
return

!2::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, broadcast
return

^0::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, setTeleporter
return

!1::
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
If (collectCounter = 4){
MsgBox, Success 2
}else{
MsgBox, %collectCounter% fail
}
		
return	
	

^9::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, setSens
return

^8::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, resetScreen
return

^7::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 150
SetKeyDelay, 25
SendMode, Event
Gosub, resetScreen

return

^6::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, collectMats
return

^5::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, collectSupply
return

^4::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
Gosub, depositMats
return

;checkCompletion tester
^3::
;must set to something not bound in fn
SetDefaultMouseSpeed, 2
SetMouseDelay, 75
SetKeyDelay, 25
SendMode, Event
falseCompletions := 0
Loop {
	KeyWait, b, D, T1
	If (ErrorLevel == 0){
		break
	}
	If (checkCompletion()){
		falseCompletions++
	}
}
MsgBox, False Completions: %falseCompletions%
return

^2::
If (completion){
	MsgBox, %completion%
}else{
	MsgBox, failed
}
Gosub, checkup
If (completion){
	MsgBox, %completion%
}else{
	MsgBox, failed
}
return

^1::
Send, {w down}
Sleep, 400
Sleep, 2000
Send, {w up}{s down}
Sleep, 150
Send, {Space}
Sleep, 1875
Send, {s up}
return

!^0::
Send, {w down}{a down}
Sleep, 1050
Send, {w up}{a up}
return

; MAIN METHOD
#0::

Gosub, checkFortnite
MsgBox, Please make sure you have the right discord account logged in and are on the right starting page. For more info please view documentation video
IfWinExist ahk_exe Discord.exe
	winactivate ahk_exe Discord.exe
else
	run, "C:\Users\laser\AppData\Local\Discord\app-1.0.9007\Discord.exe"
WinWait ahk_exe Discord.exe
WinActivate ahk_exe Discord.exe
WinWaitActive ahk_exe Discord.exe
WinMaximize, ahk_exe Discord.exe


Clipboard :=
MouseMove, 228, 231
Click
MouseMove, 400, 982
Click
Click
Send, ^c
ClipboardSaved := Clipboard
WinMinimize, ahk_exe Discord.exe

Loop {
	MsgBox, loopin
	startMin := 0
	Gosub, startMission
	Loop {
		Sleep, (59 - A_Sec)*1000
		Gosub, checkup
		If (completion){
			
			break
		}
		;Sleep, ((5-(Mod(A_Min, 5))) * 60000) + ((59 - A_Sec) * 1000)
		Loop {
			If (completion){
				break
			}
			If((Mod(A_Min, 5)) = 0 && startMin >=2){
				break
			}else{
				Sleep, (59 - A_Sec) * 1000
				startMin++
				Gosub, checkup
			}
		}
		;MsgBox, collecting mats
		If (completion){
				break
			}
		Gosub, collectMats
		collectCounter++
		;MsgBox, %collectCounter%
		If (completion){
				break
			}
		Gosub, checkup
		Gosub, collectSupply
		Gosub, checkup
		If (completion){
				break
			}
		Sleep, (59 - A_Sec)*1000
		Gosub, checkup

		If (collectCounter = 5){
			Sleep, (59 - A_Sec)*1000
			
			Gosub, checkup
			If (completion){
				break
			}
			

			collectCounter := 0
			;MsgBox, depositing
			Gosub, depositMats
			Gosub, checkup
			If (completion){
				break
			}
			
		}
	If (completion){
				break
			}
	}
	;MsgBox, broken
	completion := false	
	;Sleep, 240000
	Gosub, miniCheckup
	Gosub, collectRewards
	Gosub, miniCheckup
	Loop, 5
		{
		;Sleep, 60000
		Gosub, miniCheckup
		}
	;Sleep, 300000

}
MsgBox, Completed
return


#e::ExitApp



^!r::Reload

/*
349, 343
303, 102,0xFFFFFF
531, 106,0x321D16
1386, 106,0x230C04
808, 317,0x095197
954, 317,0x1E1E69
1101, 317,0x2E4D3A
1245, 317,0x6C4210
*/