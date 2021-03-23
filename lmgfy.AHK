^+g::
{
	Send, ^c
	Sleep 50
	clipboard = http://lmgtfy.com/?q=%clipboard%
	;Run, %clipboard%
	Return
}
