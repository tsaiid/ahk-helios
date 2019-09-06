; HotKey

;; For all Helios related window
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

!b::
  Send ^{Left}
Return

!f::
  Send ^{Right}
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
  If (WinActive("ahk_exe Helios.exe")) {
    Send {AppsKey}
  } Else {
    Send ^w
  }
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
  SelectMismatchValue()
  Send !c
Return

; Confirm, Next, and Start Edit
^s::
  SelectMismatchValue()
  Send !c
  Sleep 1000
  Send !x

  ; wait status to be changed
  StartEditAfterReady()
Return

^+1::
;  global prevExamDate
  ;MsgBox, a
  currPatID := GetCurrPatIDFromGeUv()
  If (prevExamDate && prevPatID = currPatID) {
    Send %prevExamDate%
    ;MsgBox, %prevPatID% . " " . %currPatID%
  } Else {
    Send ^+1
  }
Return
#IfWinActive  ; ahk_group Helios

;; Only specific to the main Helios window
#IfWinActive ahk_exe Helios.exe
^1::
  ClickReportList()
Return

^2::
  ClickExamList()
Return

^3::
  ClickOpdList()
Return

^4::
  ClickPathoList()
Return

^r::
  Send ^+r
Return

Esc:: ;; use ESC to close some windows
  If (WinActive("IS Cancel?? ahk_exe Helios.exe") || WinActive("IS Edit?? ahk_exe Helios.exe")) {
    ;MsgBox, cancel
    ControlClick, Button2
    Sleep, 500
    If (WinActive("IS Cancel?? ahk_exe Helios.exe") || WinActive("IS Edit?? ahk_exe Helios.exe")) {
      ControlGet, ControlHwnd, Hwnd, , Button2
      MsgBox % ControlHwnd
    }
  } Else If (WinActive("醫師報告 ahk_exe Helios.exe")) {
    hHeliosReportSumWnd := WinExist("醫師報告 ahk_exe Helios.exe")
    If (hHeliosReportSumWnd) {
      reportSumWinCloseBtnObj := Acc_Get("Object", "4.1", 0, "ahk_id " hHeliosReportSumWnd)
      reportSumWinCloseBtnObj.accDoDefaultAction(0)
    }
  } Else If (WinActive("SOA ahk_exe Helios.exe")) {
    WinClose
  } Else {
    ;MsgBox, else
    Send {Esc}
  }
Return

^Up::
  global findingObj, impObj
  global findingScrollBarUpObj, impScrollBarUpObj
  If (impObj.accFocus = "0") {
    sbUpObj := impScrollBarUpObj
  } Else If (findingObj.accFocus = "0") {
    sbUpObj := findingScrollBarUpObj
  } Else {
    Send ^Up
  }
  sbUpObj.accDoDefaultAction(0)
Return

^Down::
  global findingObj, impObj
  global findingScrollBarDownObj, impScrollBarDownObj
  If (impObj.accFocus = "0") {
    sbDownObj := impScrollBarDownObj
  } Else If (findingObj.accFocus = "0") {
    sbDownObj := findingScrollBarDownObj
  } Else {
    Send ^Down
  }
  sbDownObj.accDoDefaultAction(0)
Return
#IfWinActive  ; ahk_exe Helios.exe

;; for JIS keyboard
;; Edit report
;AppsKey::
SC029::
  global findingObj, impObj
  Send ^+t
  If (impObj.accFocus = "0") {
    impObj.accSelect(0x01, 0)
  } Else {
    findingObj.accSelect(0x01, 0)
  }
Return

; Remap Kana Key
SC070::F3

SC07B::LButton
SC079::RButton

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
