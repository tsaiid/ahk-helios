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

#c::
  Send {Home}+{End}^c
Return

^w::
  SendEvent {AppsKey}
Return

#IfWinActive

; Need to handle the global hotkey ^t from Helios
^t::
If WinActive("ahk_class Chrome_WidgetWin_1") {
  ControlSend, ,^t, ahk_class Chrome_WidgetWin_1
} Else If WinActive("ahk_class MozillaWindowClass") {
  ControlSend, ,^t, ahk_class MozillaWindowClass
} Else {
  SendInput ^t
}
Return

^r::
If WinActive("ahk_class Chrome_WidgetWin_1") {
  ControlSend, ,^r, ahk_class Chrome_WidgetWin_1
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

#v::^v
#x::^x
/*
#w::^w
#t::^t
#r::^r
#s::^s
#z::^z
#a::^a
*/
