GroupAdd, ThisScript, %A_ScriptName%		; Add any window containing this script's name to the group ThisScript
											; This is used in the Auto-reload on save function

; ---------------------------------
; Auto-reload on save
; ---------------------------------

; Reloads script if active window is the script editor
; Reloads on Ctrl-S in the editor window

#IfWinActive ahk_group ThisScript						; Only run if met
~^s::													; Otherwise, ignore hotkey
	TrayTip, Reloading updated script, %A_ScriptName%
	SetTimer, RemoveTrayTip, 2000
	Sleep, 2000
	Reload
return
#IfWinActive						
