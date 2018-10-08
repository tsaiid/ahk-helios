; Select Abnormal Value
;; params
;;;   abnKey  0, A, B, C, D, R

SelectAbnormalValue(abnKey="B") {
  global ABNORMAL_VALUE_PATH
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    abnormalValueObj := Acc_Get("Object", ABNORMAL_VALUE_PATH[abnKey], 0, "ahk_id " hHeliosWnd)
    abnormalValueObj.accSelect(0x3, 0)
  }
}