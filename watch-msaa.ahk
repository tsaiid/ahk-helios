#Include <Acc>

strLog =
WinGet, hWnd, ID, Helios

If (hWnd) {
  oAcc := Acc_Get("Object", "4.7.1.1", 0, "ahk_id " hWnd)
  old_name := oAcc.accName(0)

  Loop, 20 {
    oAcc := Acc_Get("Object", "4.7.1.1", 0, "ahk_id " hWnd)
    name := oAcc.accName(0)
    role := Acc_Role(oAcc)
    state := Acc_State(oAcc)
    ;value := oAcc.accValue(0)

    if (old_name != name && old_name != "[病人資訊]") {
      Send ^t
      Break
    }

    FormatTime, nowStr, %A_Now%, HH:mm:ss
    ;StringReplace,value,value,`r`n, , All
    ;StringReplace,value,value,`n, , All
    ;value := SubStr(value, 1, 30)

    strLog .= nowStr . " " . role . " - " . state . ": " . name . "`n"
    Sleep, 200
  }

  MsgBox % strLog
} Else {
  MsgBox, No existing Helios window.
}
