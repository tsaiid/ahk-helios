; HotKey
#IfWinActive ahk_exe Helios.exe
ClickReportList() {
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  reportListObj := Acc_Get("Object", "4.7.2.1", 0, "ahk_id " hHeliosWnd)
  reportListObj.accDoDefaultAction(0)
}

ClickOpdList() {
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  opdListObj := Acc_Get("Object", "4.7.2.6", 0, "ahk_id " hHeliosWnd)
  opdListObj.accDoDefaultAction(0)
}

ClickPathoList() {
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  pathoListObj := Acc_Get("Object", "4.7.2.8", 0, "ahk_id " hHeliosWnd)
  pathoListObj.accDoDefaultAction(0)
}
#IfWinActive

;; for SmartWonder
#IfWinActive ahk_group SmartWonder
;;; Select Tabs
ClickReportEditing() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  ; 切換至編輯報告頁
  tabEditReport.click()
}

ClickPreviousReports() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  ; 切換至歷史報告頁
  tabPrevReport.click()
}
#IfWinActive