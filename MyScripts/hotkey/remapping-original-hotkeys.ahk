; HotKey
;; for SmartWonder

#IfWinActive ahk_group Helios
^h::
  SendEvent {BS}
Return

^d::
  SendEvent {DEL}
Return

^n::
  SendEvent {Down}
Return

^p::
  SendEvent {Up}
Return

^f::
  SendEvent {Right}
Return

^b::
  SendEvent {Left}
Return

^a::
  SendEvent {Home}
Return

^e::
  SendEvent {End}
Return

#a::
  SendEvent ^a
Return

#z::
  SendEvent ^z
Return

;; Copy current line
#c::
  SendEvent {Home}+{End}^c
Return

;; Copy current line and then paste in Inpression section
#v::
  SendEvent {Home}+{End}^c{Tab}^v
Return

;; Delete to the end of line
^k::
  SendEvent +{End}{Del}
Return

;; Open recent worklist
^w::
  SendEvent {AppsKey}
Return

;; Move current line up
!Up::
  SendEvent {Home}+{End}^x{Up}^v{Up}
Return

;; Move current line down
!Down::
  SendEvent {Home}+{End}^x{Down}^v{Up}
Return

; Backup Report Before Confilm
!c::
  BackupHeliosReportToFile()
  SendEvent !c
Return

; Confirm, Next, and Start Edit
^s::
  Send !c
  Send !x

  ; wait status to be changed
  StartEditAfterReady()
Return
#IfWinActive

; Need to handle the global hotkey ^t from Helios
^t::
If WinActive("ahk_exe chrome.exe") {
  ControlSend, ,^t, ahk_exe chrome.exe
} Else If WinActive("ahk_class MozillaWindowClass") {
  ControlSend, ,^t, ahk_class MozillaWindowClass
} Else {
  SendInput ^t
}
Return

^r::
If WinActive("ahk_exe chrome.exe") {
  ControlSend, ,^r, ahk_exe chrome.exe
} Else If WinActive("ahk_class MozillaWindowClass") {
  ControlSend, ,^r, ahk_class MozillaWindowClass
} Else {
  SendInput ^r
}
Return

;; for GE UV
#IfWinActive ahk_exe Miv2Lib.exe

#IfWinActive

;; for global windows environment
#Space::
  SendEvent ^{Space}  ; Need to send event to work in VirtualBox
Return

;LWin & Tab::AltTab    ; Mimick Alt-Tab
                      ; Alt-tab hotkeys are not affected by #IfWin: they are in effect for all windows.

#x::^x
/*
#w::^w
#t::^t
#r::^r
#s::^s
#z::^z
#a::^a
*/
