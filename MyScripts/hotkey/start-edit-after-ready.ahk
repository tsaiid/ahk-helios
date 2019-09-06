; start edit after ready

StartEditAfterReady(timeOut = 10) {
  global reportStatusObj

  maxLoopCount := timeOut * 10
  Loop, %maxLoopCount% {
    reportStatusStr := reportStatusObj.accName(0)

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
}