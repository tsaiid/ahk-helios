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
  BackupHeliosReportToFile()
  Send !c
Return

; Confirm, Next, and Start Edit
^s::
  Send !c
  Sleep 1000
  Send !x

  ; wait status to be changed
  StartEditAfterReady()
Return

^+1::
;  global prevExamDate
  ;MsgBox, a
  If (prevExamDate) {
    Send %prevExamDate%
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
  ClickOpdList()
Return

^3::
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

/*
^Up::
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    If (impObj.accFocus = "0") {
      sbUpObj := Acc_Get("Object", IMPRESSION_SCROLLBAR_UP_PATH, 0, "ahk_id " hHeliosWnd)
    } Else If (findingObj.accFocus = "0") {
      sbUpObj := Acc_Get("Object", FINDING_SCROLLBAR_UP_PATH, 0, "ahk_id " hHeliosWnd)
    } Else {
      Send ^Up
    }
    sbUpObj.accDoDefaultAction(0)
  }
Return

^Down::
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    If (impObj.accFocus = "0") {
      sbDownObj := Acc_Get("Object", IMPRESSION_SCROLLBAR_DOWN_PATH, 0, "ahk_id " hHeliosWnd)
    } Else If (findingObj.accFocus = "0") {
      sbDownObj := Acc_Get("Object", FINDING_SCROLLBAR_DOWN_PATH, 0, "ahk_id " hHeliosWnd)
    } Else {
      Send ^Up
    }
    sbDownObj.accDoDefaultAction(0)
  }
Return
*/
#IfWinActive  ; ahk_exe Helios.exe

;; Edit report
;AppsKey::
SC029::
  Send ^+t
  WinGet, hWnd, ID, Helios
  If (hWnd) {
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hWnd)
    If (impObj.accFocus = "0") {
      impObj.accSelect(0x01, 0)
    } Else {
      findingObj.accSelect(0x01, 0)
    }
  }
Return

;; for JIS keyboard
SC07B::LButton
SC079::RButton

/*
; Need to handle the global hotkey ^t from Helios
^t::
If WinActive("ahk_exe chrome.exe") {
  ControlGet, controlID, Hwnd,,Chrome_RenderWidgetHostHWND1, Google Chrome
  ;ControlGet, controlID, Hwnd,,Chrome_RenderWidgetHostHWND1, ahk_exe chrome.exe
  ControlSend, Chrome_RenderWidgetHostHWND1, ^t, Google Chrome
  ;ControlSend, Chrome_RenderWidgetHostHWND1, ^t, ahk_exe chrome.exe
  ;WinGet, hWnd, ID, A
  ;ControlSend, ahk_parent,^t, ahk_exe chrome.exe  ; send to ahk_parent to make controlsend to chrome ok
  ;ControlSend, ahk_parent, ^t, ahk_class Chrome_WidgetWin_1
  ;ControlSend, , {Ctrl down}t{Ctrl up}, ahk_class Chrome_WidgetWin_1
  ;ControlSend, , ^t, ahk_class Chrome_WidgetWin_1
  ;MsgBox % hWnd
} Else If WinActive("ahk_class MozillaWindowClass") {
  ControlSend, ,^t, ahk_class MozillaWindowClass
} Else {
  Send ^t
  WinGet, hWnd, ID, Helios
  If (hWnd) {
    findingText := Acc_Get("Object", "4.9.30.1", 0, "ahk_id " hWnd)
    findingText.accSelect(0x01, 0)
  }
}
Return
*/

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
