; HotKey
#IfWinActive ahk_exe Helios.exe
ClickReportList() {
  global PREV_REPORT_TAB_PATH
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  reportListObj := Acc_Get("Object", PREV_REPORT_TAB_PATH, 0, "ahk_id " hHeliosWnd)
  reportListObj.accDoDefaultAction(0)
}

ClickOpdList() {
  global OPD_TAB_PATH
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  opdListObj := Acc_Get("Object", OPD_TAB_PATH, 0, "ahk_id " hHeliosWnd)
  opdListObj.accDoDefaultAction(0)
}

ClickPathoList() {
  global OP_ADM_PATHO_TAB_PATH
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  pathoListObj := Acc_Get("Object", OP_ADM_PATHO_TAB_PATH, 0, "ahk_id " hHeliosWnd)
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