; Copy Current Helios Report Into Notepad

CopyHeliosReportIntoNotepad() {
  WinGet, hWnd, ID, Helios

  If (hWnd) {
    ; parse exam info
    infoText := Acc_Get("Name", "4.5.1.1", 0, "ahk_id " hWnd)
    RegExMatch(infoText, "^\[.+\]\s+(\w+)/([^\s]+)\s+\[(.+?)\]\s+\[.+?\]\s+\[(.+?)/.+?\]\s+\[([\d-]+).+?\]", examInfo)
    ptID := examInfo1
    ptName := examInfo2
    ptSexAge := examInfo3
    examName := examInfo4
    examDate := examInfo5
    findingText := Acc_Get("Value", "4.9.30.1", 0, "ahk_id " hWnd)
    impText := Acc_Get("Value", "4.9.33", 0, "ahk_id " hWnd)

    ; windows styly newline
    findingText := RegExReplace(findingText, "(?<!\r)\n", "`r`n")
    impText := RegExReplace(impText, "(?<!\r)\n", "`r`n")

    finalText = %ptID% %ptName% %ptSexAge% %examDate% %examName%`r`n`r`n----`r`n%findingText%`r`n`r`n====`r`n%impText%
    Clipboard := finalText

    Run, Notepad.exe, , , notepadPID
    WinWait, ahk_pid %notepadPID%
    WinActivate
    SendEvent, ^v
  }
}
