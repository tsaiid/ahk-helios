; Helios specific functions

SleepThenTab(sleepTime = 300) {
  Sleep %sleepTime%
  Send {Tab}
}

AppendFindingsImpression(fdStr, impStr) {
  global findingObj, impObj

  findingObj.accValue(0) := findingObj.accValue(0) . fdStr
  impObj.accValue(0) := impObj.accValue(0) . impStr
}

;; Cache Helios Objs
CacheHeliosAccObjs() {
  /*
  global hHeliosWnd
  global findingObj, impObj
  global reportListObj, examListObj, opdListObj, pathoListObj
  global reportStatusObj, abnormalValueObjs, mismatchValueObjs
  global FINDING_INPUT_PATH, IMPRESSION_INPUT_PATH
  global ABNORMAL_VALUE_PATH, MISMATCH_VALUE_PATH
  global PREV_REPORT_TAB_PATH, EXAM_TAB_PATH, OPD_TAB_PATH, OP_ADM_PATHO_TAB_PATH
  global REPORT_STATUS_PATH
  */
  global

  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    prevFindingObj := Acc_Get("Object", PREV_FINDING_TEXT_PATH, 0, "ahk_id " hHeliosWnd)
    prevImpObj := Acc_Get("Object", PREV_IMPRESSION_TEXT_PATH, 0, "ahk_id " hHeliosWnd)
    reportListObj := Acc_Get("Object", PREV_REPORT_TAB_PATH, 0, "ahk_id " hHeliosWnd)
    examListObj := Acc_Get("Object", EXAM_TAB_PATH, 0, "ahk_id " hHeliosWnd)
    opdListObj := Acc_Get("Object", OPD_TAB_PATH, 0, "ahk_id " hHeliosWnd)
    pathoListObj := Acc_Get("Object", OP_ADM_PATHO_TAB_PATH, 0, "ahk_id " hHeliosWnd)
    reportStatusObj := Acc_Get("Object", REPORT_STATUS_PATH, 0, "ahk_id " hHeliosWnd)
    prevReportStatusObj := Acc_Get("Object", PREV_REPORT_STATUS_PATH, 0, "ahk_id " hHeliosWnd)
    findingScrollBarUpObj := Acc_Get("Object", FINDING_SCROLLBAR_UP_PATH, 0, "ahk_id " hHeliosWnd)
    findingScrollBarDownObj := Acc_Get("Object", FINDING_SCROLLBAR_DOWN_PATH, 0, "ahk_id " hHeliosWnd)
    impScrollBarUpObj := Acc_Get("Object", IMPRESSION_SCROLLBAR_UP_PATH, 0, "ahk_id " hHeliosWnd)
    impScrollBarDownObj := Acc_Get("Object", IMPRESSION_SCROLLBAR_DOWN_PATH, 0, "ahk_id " hHeliosWnd)

    __abnormalValueObj0 := Acc_Get("Object", ABNORMAL_VALUE_PATH["0"], 0, "ahk_id " hHeliosWnd)
    __abnormalValueObjA := Acc_Get("Object", ABNORMAL_VALUE_PATH["A"], 0, "ahk_id " hHeliosWnd)
    __abnormalValueObjB := Acc_Get("Object", ABNORMAL_VALUE_PATH["B"], 0, "ahk_id " hHeliosWnd)
    __abnormalValueObjC := Acc_Get("Object", ABNORMAL_VALUE_PATH["C"], 0, "ahk_id " hHeliosWnd)
    __abnormalValueObjD := Acc_Get("Object", ABNORMAL_VALUE_PATH["D"], 0, "ahk_id " hHeliosWnd)
    __abnormalValueObjR := Acc_Get("Object", ABNORMAL_VALUE_PATH["R"], 0, "ahk_id " hHeliosWnd)
    abnormalValueObjs := {  0: __abnormalValueObj0
                           ,A: __abnormalValueObjA
                           ,B: __abnormalValueObjB
                           ,C: __abnormalValueObjC
                           ,D: __abnormalValueObjD
                           ,R: __abnormalValueObjR  }

    __mismatchValueObj0 := Acc_Get("Object", MISMATCH_VALUE_PATH["0"], 0, "ahk_id " hHeliosWnd)
    __mismatchValueObjA := Acc_Get("Object", MISMATCH_VALUE_PATH["A"], 0, "ahk_id " hHeliosWnd)
    __mismatchValueObjB := Acc_Get("Object", MISMATCH_VALUE_PATH["B"], 0, "ahk_id " hHeliosWnd)
    __mismatchValueObjC := Acc_Get("Object", MISMATCH_VALUE_PATH["C"], 0, "ahk_id " hHeliosWnd)
    mismatchValueObjs := {  0: __mismatchValueObj0
                           ,A: __mismatchValueObjA
                           ,B: __mismatchValueObjB
                           ,C: __mismatchValueObjC  }
  }
}

__CacheHeliosAccObjs:
  CacheHeliosAccObjs()
Return
