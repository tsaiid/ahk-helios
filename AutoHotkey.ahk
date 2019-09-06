; Settings
#NoEnv
#Hotstring EndChars `t
#Hotstring O
#MaxHotkeysPerInterval 200
SetBatchLines -1  ; better performance: http://scsnake.blogspot.tw/2016/03/hotstring.html
SendMode, Input
SetTitleMatchMode, 2
SetControlDelay -1  ; improve reliability for ControlClick, reduces interference from the user's physical movement of the mouse

; Group Control For Helios
GroupAdd, Helios, Helios
GroupAdd, Helios, ahk_class ThunderRT6FormDC
GroupAdd, Helios, 會診系統
GroupAdd, FemhLogin, Helios Login
GroupAdd, FemhLogin, 亞東紀念醫院 新醫療系統

; External Libraries
#Include <WBGet>
#Include <Paste>
#Include <varExist>
#Include <JSON>
#Include <StdOutStream>
#Include <WinHttpRequest>
#Include <Acc>
#Include <ShowGUIatCurrScreenCenter>

; Options
ENABLE_KEY_COUNTER := 0
PRESERVE_CLIPBOARD := 0

; Global Variables
#Include MyScripts\vars.ahk

; Cache Helios Acc Objs
;; Bug: shoule be before??
CacheHeliosAccObjs()
SetTimer, __CacheHeliosAccObjs, 300000 ; 5 * 60* 1000

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
  #Include MyScripts\angio.ahk

  #Include MyScripts\ms-mri.ahk
  #Include MyScripts\ms-ct.ahk

  #Include MyScripts\mri.ahk
  #Include MyScripts\abbreviations.ahk
  #Include MyScripts\others.ahk

  #Include MyScripts\spg.ahk
  #Include MyScripts\bone-density.ahk

  ;;; Gui
  #Include MyScripts\gui-common.ahk
#IfWinActive

#Include MyScripts\debug.ahk

; HotKeys Lib
#Include MyScripts\hotkey\get-side-str.ahk
#Include MyScripts\hotkey\reorder-selected-text.ahk
#Include MyScripts\hotkey\remapping-original-hotkeys.ahk
#Include MyScripts\hotkey\backup-helios-report-to-file.ahk
#Include MyScripts\hotkey\start-edit-after-ready.ahk
#Include MyScripts\hotkey\selecting-tabs.ahk
#Include MyScripts\hotkey\get-curr-accno-from-ge-uv.ahk
#Include MyScripts\hotkey\get-curr-patid-from-ge-uv.ahk
#Include MyScripts\hotkey\selecting-abnormal-value.ahk
#Include MyScripts\hotkey\selecting-mismatch-value.ahk
#Include MyScripts\hotkey\copy-prev-similar-report.ahk

; Mouse Macro
#Include MyScripts\mouse\magnify-ge-uv-grid.ahk

; Previously enabled but now disabled functions
;; The checking mechanism changed. No need to active current image before submitting since 2014-02.
;;#Include MyScripts\active-current-image-before-submit.ahk

; Define hotkeys
#IfWinActive ahk_group Helios

; Delete current line
^y::
  Send {Home}+{End}{Del}
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
^+*::
  ReorderSeletedText(false, true, "*")
Return

^+-::
  ReorderSeletedText(false, true, "-")
Return

^+>::
  ReorderSeletedText(false, true, ">")
Return

^!*::
  ReorderSeletedText(false, true, "  *")
Return

^!-::
  ReorderSeletedText(false, true, "  -")
Return

^!>::
  ReorderSeletedText(false, true, "  >")
Return
#IfWinActive  ; ahk_group Helios


#IfWinActive ahk_exe Helios.exe
!0::
  SelectAbnormalValue("0")
Return

!1::
  SelectAbnormalValue("A")
Return

!2::
  SelectAbnormalValue("B")
Return

!9::
  SelectMismatchValue("B")
Return

$^0::
  CopyPrevSimilarReport()
Return

$^+0::
  accno := GetCurrAccnoFromGeUv()
  if (accno) {
    r := WinHttpRequest("https://femh.tsai.it/ris/recent-similar-report/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 1`nNO_AUTO_REDIRECT")
    parsedResult := JSON.Load(InOutData)
    If (parsedResult.report.accno) {
      MsgBox % parsedResult.report.findings "`r`n----`r`n" parsedResult.report.impression
    } Else {
      MsgBox, No Similar Report.
    }
  }
Return
#IfWinActive  ; ahk_exe Helios.exe

^!t::
  FileEncoding, UTF-8
  MsgBox % A_FileEncoding
Return

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.
