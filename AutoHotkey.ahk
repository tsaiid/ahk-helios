; Settings
#NoEnv
#Hotstring EndChars `t
#Hotstring O
SetBatchLines -1  ; better performance: http://scsnake.blogspot.tw/2016/03/hotstring.html
SendMode, Input

; Group Control For Helios
GroupAdd, Helios, Helios

; External Libraries
#Include <WBGet>
#Include <Paste>
#Include <varExist>
#Include <JSON>
#Include <StdOutStream>
#Include <WinHttpRequest>
#Include <Acc>

; Options
ENABLE_KEY_COUNTER := 0
PRESERVE_CLIPBOARD := 0

; Global Variables
#Include MyScripts\vars.ahk

; Key/Mouse Counter
;; Bug: shoule be before RegEx HotStrings
;#Include MyScripts\lib\keystroke-counter.ahk

; RegEx Hotstrings
;; Bug: need to be included first ???
#Include MyScripts\regex-hotstrings.ahk

#Include MyScripts\private.ahk

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\dicom-sr.ahk
#Include MyScripts\lib\dicom-sr-ocr.ahk
#Include MyScripts\lib\date.ahk
#Include MyScripts\lib\string.ahk
#Include MyScripts\lib\supported-exam-patterns.ahk
#Include MyScripts\lib\libera-bmd.ahk
#Include MyScripts\lib\smartwonder-common.ahk
#Include MyScripts\lib\helios-common.ahk
;#Include MyScripts\lib\smart-card.ahk

#IfWinActive ahk_group Helios
  ;;; HotStrings
  #Include MyScripts\neuro.ahk

  #Include MyScripts\ajcc.ahk

  #Include MyScripts\sono.ahk

  #Include MyScripts\chest-x-ray.ahk
  #Include MyScripts\kub.ahk
  #Include MyScripts\bone-x-ray.ahk
  #Include MyScripts\other-x-ray.ahk
  #Include MyScripts\comparisons.ahk
  #Include MyScripts\sono-guide.ahk

  #Include MyScripts\abdomen-ct.ahk
  #Include MyScripts\abdomen-mr.ahk
  #Include MyScripts\chest-ct.ahk

  #Include MyScripts\ct-guide.ahk

  #Include MyScripts\barium-enema.ahk
  #Include MyScripts\esophagraphy.ahk
  #Include MyScripts\ugi-small-intestine.ahk
  #Include MyScripts\intravenous-pyelogram.ahk
  #Include MyScripts\special.ahk

  #Include MyScripts\ms-mri.ahk
  #Include MyScripts\ms-ct.ahk

  #Include MyScripts\mri.ahk
  #Include MyScripts\others.ahk
  #Include MyScripts\abbreviations.ahk

  #Include MyScripts\spg.ahk
  #Include MyScripts\bone-density.ahk

  ;;; HotKeys
  #Include MyScripts\hotkey\delete-current-line.ahk

  ;;; Gui
  #Include MyScripts\gui-common.ahk
#IfWinActive

SetTitleMatchMode, 2

;#Include MyScripts\debug.ahk

; HotKeys Lib
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\get-side-str.ahk
#Include MyScripts\hotkey\convert-case.ahk
#Include MyScripts\hotkey\reorder-selected-text.ahk
#Include MyScripts\hotkey\remapping-original-hotkeys.ahk
#Include MyScripts\hotkey\get-mesa-scale.ahk
#Include MyScripts\hotkey\open-in-osirix.ahk

; Previously enabled but now disabled functions
;; The checking mechanism changed. No need to active current image before submitting since 2014-02.
;;#Include MyScripts\active-current-image-before-submit.ahk

; Define hotkeys
#IfWinActive ahk_group Helios

; 將選取的文字改為字首大寫
^!t::
  ConvertSelectedTextToSentenceCase()
Return

; CopyIndication
^i::
Capslock & i::
  MyOrderDiag := CopyOrder()
  Paste(MyOrderDiag)
Return

; Delete current line
^y::
  DeleteCurrentLine()
Return

; Reorder Seleted Text
^!o::
  ReorderSeletedText()
Return

; Deorder Seleted Text
^!+o::
  ReorderSeletedText(true)
Return

; Unorder Seleted Text
^!u::
  ReorderSeletedText(false, true, "-")
Return

; Confirm and Next
^s::
  SendEvent !c
  SendEvent !x
Return

; Get Mesa Scale
^!m::
  GetMesaScale()
Return

^+o::
  OpenCurrentAccNoInOsiriX()
Return

#IfWinActive

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.
