; Select Mismatch Value
;; params
;;;   abnKey  0, A, B, C

SelectMismatchValue(misKey="B") {
  global MISMATCH_VALUE_PATH
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    mismatchValueObj := Acc_Get("Object", MISMATCH_VALUE_PATH[misKey], 0, "ahk_id " hHeliosWnd)
    mismatchValueObj.accSelect(0x3, 0)
  }
}