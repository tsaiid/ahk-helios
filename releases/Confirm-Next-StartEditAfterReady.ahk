; Helios Extension
; Confirm (Alt-C), Next (Alt-X), Start edit (Ctrl-T) after ready

; Group Control
GroupAdd, Helios, Helios

#Include ..\Lib\Acc.ahk
#Include ..\MyScripts\hotkey\start-edit-after-ready.ahk

#IfWinActive ahk_group Helios
; Confirm and Next
^s::
  Send !c
  Send !x

  ; wait status to be changed
  StartEditAfterReady()
#IfWinActive
