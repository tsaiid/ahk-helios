; Helios Extension
; Backup Report, Keybinding to Alt+C

; Group Control
GroupAdd, Helios, Helios

#Include ..\Lib\Acc.ahk
#Include ..\MyScripts\hotkey\backup-helios-report-to-file.ahk

#IfWinActive ahk_group Helios
; Backup Report Before Confilm
!c::
  BackupHeliosReportToFile()
  Send !c
Return
#IfWinActive
