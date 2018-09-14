; HotKey
;; Backup Helios Report To File

BackupHeliosReportToFile(fileName = "HeliosReportBackup.txt") {
  WinGet, hWnd, ID, Helios

  If (hWnd) {
    ; parse exam info
    infoText := Acc_Get("Name", "4.5.1.1", 0, "ahk_id " hWnd)
    ;MsgBox % infoText
    RegExMatch(infoText, "^\[.+\]\s+(\w+)/([^\s]+)\s+\[(.+?)\]\s*\[.+?\]\s+(\[[0-9A-Z]+?\])?\s*\[(.+?)/.+?\]\s+\[([\d-]+).+?\]", examInfo)
    ptID := examInfo1
    ptName := examInfo2
    ptSexAge := examInfo3
    examName := examInfo5
    examDate := examInfo6
    findingText := Acc_Get("Value", "4.9.31.1", 0, "ahk_id " hWnd)
    impText := Acc_Get("Value", "4.9.34", 0, "ahk_id " hWnd)

    ; get timestamp
    FormatTime, currentTime, %A_Now%, yyyy/M/d HH:mm:ss

    finalText =
(
**** Confirm Time: %currentTime% ****
# %ptID%
# %ptName%
# %ptSexAge%
# %examDate%
# %examName%

-- F: --
%findingText%

== I: ==
%impText%


)
    ; windows styly newline
    finalText := RegExReplace(finalText, "(?<!\r)\n", "`r`n")

    FileEncoding, UTF-8
    FileAppend, %finalText%, %fileName%
    ;MsgBox % finalText
  } Else {
    MsgBox, No existing Helios window.
  }
}