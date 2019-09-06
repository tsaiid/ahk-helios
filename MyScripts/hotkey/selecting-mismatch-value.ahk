; Select Mismatch Value
;; params
;;;   abnKey  0, A, B, C

SelectMismatchValue(misKey="B") {
  global MISMATCH_VALUE_PATH
  global hHeliosWnd, mismatchValueObjs
  if (hHeliosWnd) {
    mismatchValueObjs[misKey].accSelect(0x3, 0)
  }
}