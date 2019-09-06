; Select Abnormal Value
;; params
;;;   abnKey  0, A, B, C, D, R

SelectAbnormalValue(abnKey="B") {
  global ABNORMAL_VALUE_PATH
  global hHeliosWnd, abnormalValueObjs
  if (hHeliosWnd) {
    abnormalValueObjs[abnKey].accSelect(0x3, 0)
  }
}