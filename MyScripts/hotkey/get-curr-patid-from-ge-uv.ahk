; Get current PATID from GE UV
;; param:
;;    debugInfo=True    ; show debug information

GetCurrPatIDFromGeUv(debugInfo=True) {
  GEUVhWnd := WinExist("ahk_exe Miv2Lib.exe")
  ;WinGet, hWnd, ID, Helios

  If (GEUVhWnd) {
    WinGetTitle, WinTitle, ahk_id %GEUVhWnd%
    If (RegExMatch(WinTitle, "病歷號碼：(\w+)" , OutputVar)) {
      ;MsgBox % OutputVar1
      ;Clipboard := OutputVar1
      Return OutputVar1
    } Else {
      If (debugInfo) {
        MsgBox, "No PatID Info: %WinTitle%"
      }
      Return False
    }
  } Else {
    If (debugInfo) {
      MsgBox, No existing GeUv window.
    }
    Return False
  }
}
