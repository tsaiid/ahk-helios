; Copy Previous Similar Report
;; by web api: https://femhrad.tsai.it/ris/recent-similar-report/{accno}
;; Depends on: WinHttpRequest (https://autohotkey.com/boards/viewtopic.php?t=3256)
;;             JSON (https://autohotkey.com/boards/viewtopic.php?t=627)
;;             GetCurrAccnoFromGeUv (own lib)

CopyPrevSimilarReport() {
  accno := GetCurrAccnoFromGeUv()
  if (accno) {
    global FINDING_INPUT_PATH, IMPRESSION_INPUT_PATH
    r := WinHttpRequest("https://femhrad.tsai.it/ris/recent-similar-report/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 1`nNO_AUTO_REDIRECT")
    ;MsgBox, % (r = -1) ? "successful" : (r = 0) ? "Timeout" : "No response"
    ;MsgBox, % InOutData
    ;MsgBox, % InOutHeaders
    parsedResult := JSON.Load(InOutData)
    ;MsgBox % parsedResult.report.accno
    ;MsgBox % parsedResult.info[1]
    If (parsedResult.report.accno) {
      global prevExamDate
      prevExamDate := StrSplit(parsedResult.report.examdate, A_Space)[1]
      hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
      if (hHeliosWnd) {
        WinActivate, ahk_exe Helios.exe
        Send ^+t
        ;Sleep 1000
        findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
        impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
        findingObj.accValue(0) := findingObj.accValue(0) . parsedResult.report.findings
        impObj.accValue(0) := impObj.accValue(0) . parsedResult.report.impression
      }
    } Else {
      MsgBox, No Similar Report.
    }
  }
}
