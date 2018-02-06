﻿; start edit after ready

StartEditAfterReady(timeOut = 10) {
  WinGet, hWnd, ID, Helios

  If (hWnd) {
    oAcc := Acc_Get("Object", "4.9.1.1", 0, "ahk_id " hWnd)
    maxLoopCount := timeOut * 10
    Loop, %maxLoopCount% {
      reportStatusStr := oAcc.accName(0)

      if (InStr(reportStatusStr, "[等待報告]")) {
        Send ^t
        Break
      }

      Sleep, 100
    }
  } Else {
    MsgBox, No existing Helios window.
  }
}