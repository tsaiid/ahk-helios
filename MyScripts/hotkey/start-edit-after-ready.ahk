; start edit after ready

StartEditAfterReady(timeOut = 10) {
  WinGet, hWnd, ID, Helios

  If (hWnd) {
    oAcc := Acc_Get("Object", "4.9.1.1", 0, "ahk_id " hWnd)
    maxLoopCount := timeOut * 10
    Loop, %maxLoopCount% {
      reportStatusStr := oAcc.accName(0)

      If (InStr(reportStatusStr, "[等待報告]") || InStr(reportStatusStr, "[初步報告]")) {
        Loop, %maxLoopCount% {
          If (GetCurrAccnoFromGeUv(False)) {
            ;MsgBox, 1
            ShowPrevReportWindow()
            ;InsertAutoReport(False)
            Break
          }
          Sleep, 100
        }
        Send ^+t
        Break
      }

      Sleep, 100
    }
  } Else {
    MsgBox, No existing Helios window.
  }
}