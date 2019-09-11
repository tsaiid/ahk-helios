; for debug
#IfWinActive ahk_exe Helios.exe

#IfWinActive

#IfWinActive ahk_group Helios

::esoca::
(
Esophageal cancer
1. CT protocol
TECHNIQUE: (1) NCCT (2) CECT were performed
SCAN RANGE: lower neck to adrenal gland

2. Tumor location / Size
--- Cervical segment (hypopharynx to sternal notch)
--- Upper third of thoracic segment (sternal notch to azygos vein)
--- Middle third of thoracic segment (azygos vein to inferior pulmonary vein)
--- Lower third of thoracic segment (inferior pulmonary vein to esophagogastric
junction)
--- Measurable: Length________ cm , Max thickness ________ cm
--- Non-measurable

3. Tumor invasion
--- No or Equivocal
--- Yes, if yes:
T3: Adventitia(+)
T4a: pleura(+), pericardium(+), diaphragm(+), peritoneum(+),
T4b: aortic wall(+), carina(+), left atrial wall (+), vertebral body(+),
posterior wall of trachea(+), posterior wall of main bronchus(+),

4. Regional nodal metastasis
--- No or Equivocal
--- Yes, if yes

5. Distant metastasis (In this study)
--- No or Equivocal
--- Yes, location: _________

6. OTHER FINDINGS

)
Return

::crca::
(
Colorectal cancer
1. CT protocol
With contrast, range: whole abdomen, slice thickness <= 5mm

1. MR protocol
Sagittal and Axial FSE T2WI
Axial FSE T1WI with FS, pre- and post- contrast
Axial T1WI with contrast, abdominal survey
(Coronal FSE T2WI)
(Axial T2WI, lower abdominal survey)

2. Tumor location / Size
---Location:
Ex: Cecum, ascending, hepatic flexure, transverse, splenic flexure, descending, sigmoid and rectum.
---Size:
Measurable: __________cm (largest diameter), length
Serosal side：
Non-measurable

3. Tumor invasion
---Not assessable
---No or Equivocal
---Yes, if yes:
Please pay attention to the followings: colonic or rectal wall, invasion of non-peritonealized pericolonic or perirectal tissues, and invasion of visceral peritoneum or adjacent organs.

4. Regional nodal metastasis
---No or Equivocal
---Yes, if yes, number of suspicious lymph node__________ , and location__________ (specified as below):
Pericolic/perirectal, ileocolic, right colic, middle colic, left colic, superior rectal,
superior mesenteric artery, inferior mesenteric artery…etc.

5. Distant metastasis (In this study)
---No or Equivocal
---Yes, location: _________

)
Return

::cxca::
(
Cervical cancer
1. CT protocol or MR protocol

2. Tumor Size:
---Measurable: ______cm (in maximal diameter)
---Non-measurable

3. Tumor invasion
---Not assessable
---No or Equivocal
---Yes, if yes：
Cervix
Uterine body
Parametrial invasion (Rt ___, Lt ___)
Vaginal invasion (upper 2/3 ___, lower1/3 ___)
Pelvic side wall or floor
Hydronephrosis or Hydroureter (Rt ___, Lt ___)
Pelvic organs invasion (If yes, □ Bladder □ Rectum □ Sigmoid colon □ Others
_________)

4. Regional nodal metastasis
---No or Equivocal
---Yes, if yes：
Right or left
Parametrial, obturator, internal iliac, external iliac, common iliac, sacral…etc.

5. Distant metastasis (In this study)
---No or Equivocal
---Yes, if yes: location
)
Return

::lungca::
(
Lung cancer
1. CT protocol
CT scan of the thorax was performed with a MDCT scanner.
TECHNIQUE: (1) NCCT (2) CECT were performed
SCAN RANGE: lower neck to adrenal gland

2. Tumor location / Size
--- Location:
--- Size:

3. Tumor invasion
* Not more proximal than main bronchus (T1)
* Involves main bronchus (T2)
* Invades visceral pleura (T2)
* Focal atelectasis or obstructive pneumonitis to hilum (T2)
* Involves part or anterior longitudinal ligament of the lung (T2)
* Invades parietal pleura, chest wall (including superior sulcus tumors), phrenic nerve, parietal pericardium (T3)
* Separate tumor nodule(s) in same lobe (T3)
* Invades mediastinum, heart, great vessels, trachea, recurrent laryngeal nerve, esophagus, vertebral body, carina (T4)
* Separate tumor nodule(s) in a different ipsilateral lobe (T4)

4. Regional nodal metastasis
* No regional lymph node metastasis (N0)
* If yes, location:

5. Distant metastasis (In this study)
* No evidence in the scanned range (M0)
* If yes, location:

6. Other Findings

)
Return

::prca::
(
Prostate cancer
MR protocol
1. Tumor location / Size
----Visible tumor
Not assessable
No or Equivocal
Yes, if yes：
Location: Right lobe or left lobe / Size _______cm
(largest diameter of the biggest tumor)

2. Tumor invasion
---No or Equivocal
---Yes, if yes：
Prostate (
One-half of one lobe or less
More than one-half of one lobe but not both lobes
Involves both lobes)
Extracapsular extension (neurovascular bundle invasion： Rt___, Lt ____)
Seminal vesicle invasion (Rt ___, Lt ___)
Pelvic side wall
Pelvic organs invasion (If yes,
Bladder
Rectum
Others __________)

3. Regional nodal metastasis
---No or Equivocal
---Yes, if yes：
Obturator- Rt/Lt
Internal iliac- Rt/Lt
External iliac- Rt/Lt
Sacral, others…

4. Distant metastasis (In this study)
---No or Equivocal
---Yes, if yes (location; regional or non-regional)

)
Return

InsertAutoReport(debugInfo=True) {
  accno := GetCurrAccnoFromGeUv()
  if (accno) {
    r := WinHttpRequest("https://dicom.icu/cxr/prob/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 1`nNO_AUTO_REDIRECT")
    parsedResult := JSON.Load(InOutData)
    if (parsedResult.success) {
      prob := parsedResult.probabilities
      arFdStr =
      arImpStr =

      if (prob.normal > 0.6 && prob.cardiomegaly < 0.4 && prob.ett < 0.4 && prob.port < 0.4) {
        ;arFdStr := "No abnormal patch opacity in the lung fields.`r`nNo cardiomegaly."
        ;arImpStr := "No active lung lesion."
      } else {
        if (prob.cardiomegaly > 0.7) {
          arFdStr := arFdStr . "`r`nCardiomegaly."
          ;msgbox % prob.cardiomegaly
        }
        if (prob.ett > 0.7) {
          arFdStr := arFdStr . "`r`nOn endotracheal tube."
        }
        if (prob.port > 0.7) {
          arFdStr := arFdStr . "`r`nPresence of Port-A."
        }
      }

      ;MsgBox % arFdStr
      ;MsgBox % arImpStr

      hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
      if (hHeliosWnd) {
        WinActivate, ahk_exe Helios.exe
        Send ^+t
        findingObj := Acc_Get("Object", "4.9.31.1", 0, "ahk_id " hHeliosWnd)
        impObj := Acc_Get("Object", "4.9.34", 0, "ahk_id " hHeliosWnd)
        findingObj.accValue(0) := findingObj.accValue(0) . arFdStr
        impObj.accValue(0) := impObj.accValue(0) . arImpStr
      }
    } Else {
      If (debugInfo) {
        MsgBox, No prediction data.
      }
    }
  }
}

^7::
  SelectMismatchValue()
Return

$^8::
  ShowPrevReportWindow()
Return

ShowPrevReportWindow() {
  _GUI_WIDTH := 500
  _GUI_TEXTWRAP := _GUI_WIDTH - 20

  Gui, PrevReportGui: New
  Gui, PrevReportGui:+AlwaysOnTop -MaximizeBox -MinimizeBox
  Gui, PrevReportGui: Color, 000000
  ;Gui, PrevReportGui: Add, Button, Default, Reserved

  accno := GetCurrAccnoFromGeUv()
  if (accno) {
    ;InOutData := ""
    r := WinHttpRequest("https://femh.tsai.it/ris/recent-similar-report/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 2`nNO_AUTO_REDIRECT")
    try {
      parsedResult := JSON.Load(InOutData)
      examdateStr := parsedResult.report.examdate
      findingStr := parsedResult.report.findings
      impStr := parsedResult.report.impression
    } catch e {
      MsgBox % InOutData
    }

    r := WinHttpRequest("https://femh.tsai.it/cxr/prob/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 2`nNO_AUTO_REDIRECT")
    try {
      parsedResult := JSON.Load(InOutData)
    } catch e {
      MsgBox % InOutData
    }
    if (parsedResult.success) {
      prob := parsedResult.probabilities
      normalStr := "Normal: " + prob.normal
      t_normalStr := "Normal: " + prob.t_normal
      t_cardiomegalyStr := "Cardiomegaly: " + prob.t_cardiomegaly
      t_ettStr := "ETT: " + prob.t_ett
      t_portStr := "Port-A: " + prob.t_port
    }
  } else {
    findingStr =
    impStr =

    normalStr =
    t_normalStr =
    t_cardiomegalyStr =
    t_ettStr =
    t_portStr =
  }

  Gui, PrevReportGui: Font, s12 cFFFFFF, Verdana
  If (findingStr || impStr) {
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP% xm, %examdateStr%
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP%, ----`r`n%findingStr%
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP%, ----`r`n%impStr%
    Gui, PrevReportGui: Font, s9, Verdana
    Gui, PrevReportGui: Add, Button, gbtnCopyPrevSimilarReport, Copy Report
    Gui, PrevReportGui: Add, Button, gHeliosBtnClearAllText x+10, Clear All Text
  }

  Gui, PrevReportGui: Font, s9 cFFFFFF, Verdana
  If (normalStr || cardiomegalyStr || ettStr || portStr) {
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP% xm, %normalStr%`r`n%t_normalStr%`r`n%t_cardiomegalyStr%`r`n%t_ettStr%`r`n%t_portStr%
    Gui, PrevReportGui: Add, Button, gInsertAutoReport, Auto Report
  }

  DetectHiddenWindows On
	Gui, +LastFound
  Gui, Show, Hide
  GUI_Hwnd := WinExist()
  GetClientSize(GUI_Hwnd, GUI_Width, GUI_Height)
  DetectHiddenWindows Off
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  GetClientSize(hHeliosWnd, widthHelios, heightHelios)
  WinGetPos, xHelios, yHelios, , , ahk_id %hHeliosWnd%
  ;xPrevReportGui := xHelios + widthHelios - 30 - GUI_Width
  xPrevReportGui := xHelios + widthHelios - 30 - _GUI_WIDTH
  yPrevReportGui := yHelios + 50

  ;MsgBox, x=%GUI_Width%, GUI_Hwnd=%GUI_Hwnd%, hHeliosWnd=%hHeliosWnd%

  Gui, PrevReportGui: Show, x%xPrevReportGui% y%yPrevReportGui% w500, Previous Report
  WinActivate, ahk_exe Helios.exe
}

btnCopyPrevSimilarReport:
  CopyPrevSimilarReport()
Return

PrevReportGuiGuiEscape:
  Gui, Destroy
Return

^+c::
  If (!CopyPrevReport()) {
    Send ^+c
    ;MsgBox, Send Original ^+c
  }
Return

#IfWinActive

CopyPrevReport(){
  global hHeliosWnd, findingObj, impObj, prevFindingObj, prevImpObj, prevReportStatusObj

  If (hHeliosWnd) {
    prevReportStatusStr := prevReportStatusObj.accName(0)
    If (prevReportStatusStr) {
      ;MsgBox % prevReportStatusStr
      findingObj.accValue(0) := findingObj.accValue(0) . prevFindingObj.accValue(0)
      impObj.accValue(0) := impObj.accValue(0) . prevImpObj.accValue(0)

      Return True
    } Else {
      ;MsgBox, abc
    }

  } Else {
    MsgBox, No existing Helios window.
  }
  Return False
}

HeliosBtnCopyReport:
  ;hHeliosWnd := WinExist("ahk_class HwndWrapper[Helios.exe")
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    ;ControlSend, ,!q, ahk_id hHeliosWnd
    prevFindingText := Acc_Get("Value", PREV_FINDING_TEXT_PATH, 0, "ahk_id " hHeliosWnd)
    prevImpText := Acc_Get("Value", PREV_IMPRESSION_TEXT_PATH, 0, "ahk_id " hHeliosWnd)
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    ;MsgBox % impText.accValue(0)
    ;MsgBox % newStr
    findingObj.accValue(0) := findingObj.accValue(0) . prevFindingText
    impObj.accValue(0) := impObj.accValue(0) . prevImpText
  } Else {
    MsgBox, a
  }
Return

HeliosBtnClearAllText:
  ;hHeliosWnd := WinExist("ahk_class HwndWrapper[Helios.exe")
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    ;ControlSend, ,!q, ahk_id hHeliosWnd
    ;prevFindingText := Acc_Get("Value", "4.7.2.1.6", 0, "ahk_id " hHeliosWnd)
    ;prevImpText := Acc_Get("Value", "4.7.2.1.9", 0, "ahk_id " hHeliosWnd)
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    ;MsgBox % impText.accValue(0)
    ;MsgBox % newStr
    ; Save content to Clipboard
    Clipboard := findingObj.accValue(0) . "`r`n`r`n" . impObj.accValue(0)
    findingObj.accValue(0) := ""
    impObj.accValue(0) := ""
  } Else {
    MsgBox, a
  }
Return

HeliosBtnNormalCXR:
  global hHeliosWnd, findingObj, impObj
  ;startTime = %A_Min%%A_Sec%%A_MSec%
  if (hHeliosWnd) {
    /*
    ; check if exam is cxr
    infoText := Acc_Get("Name", "4.5.1.1", 0, "ahk_id " hHeliosWnd)
    RegExMatch(infoText, "^\[.+\]\s+(\w+)/([^\s]+)\s+\[(.+?)\]\s*\[.+?\]\s+(\[[0-9A-Z]+?\])?\s*\[(.+?)/.+?\]\s+\[([\d-]+).+?\]", examInfo)
    examName := examInfo5
    if (examName not in Chest PA,Chest AP) {
      MsgBox, Not a CXR.
      Return
    }
    */

    WinActivate, ahk_exe Helios.exe
    Send ^+t
    normalFindingStr =
( Join`r`n
The heart size is normal.
No specific finding in the bilateral lung fields.
Bilateral CP angles are clear and sharp.
The thoracic cage and bones are generally intact.
)
    findingObj.accValue(0) := normalFindingStr
    impObj.accValue(0) := "Both lungs are unremarkable."
    SelectMismatchValue()
    ;endTime = %A_Min%%A_Sec%%A_MSec%
    ;elapsedTime := endTime - startTime
    ;MsgBox % elapsedTime
    Send !c
    Sleep 1000
    Send !x
    StartEditAfterReady()
  } Else {
    MsgBox, a
  }
Return

HeliosBtnPcuNormalCXR:
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    ; check if exam is cxr
    infoText := Acc_Get("Name", "4.5.1.1", 0, "ahk_id " hHeliosWnd)
    RegExMatch(infoText, "^\[.+\]\s+(\w+)/([^\s]+)\s+\[(.+?)\]\s*\[.+?\]\s+(\[[0-9A-Z]+?\])?\s*\[(.+?)/.+?\]\s+\[([\d-]+).+?\]", examInfo)
    examName := examInfo5
    if (examName not in Chest PA,Chest AP) {
      MsgBox, Not a CXR.
      Return
    }

    WinActivate, ahk_exe Helios.exe
    Send ^+t
    findingObj := Acc_Get("Object", FINDING_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", IMPRESSION_INPUT_PATH, 0, "ahk_id " hHeliosWnd)
    fd_str =
(
No abnormal contour or soft tissue shadow in the mediastinum.
No significant pleural thickening or abnormal shadow is noted in the bilateral lung fields.
Bilateral costophrenic angles are clear and sharp.
The heart size is normal.
The thoracic cage and bones are generally intact.
)
    imp_str =
(
Normal chest X-ray.
)
    findingObj.accValue(0) := fd_str
    impObj.accValue(0) := imp_str
    Send !c
    Sleep 1000
    Send !x
    StartEditAfterReady()
  } Else {
    MsgBox, a
  }
Return

HeliosBtnSaveAndNext:
  hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
  if (hHeliosWnd) {
    WinActivate, ahk_exe Helios.exe
    WinWaitActive, ahk_exe Helios.exe
    Send ^t
;    Sleep 1000
    Send !c
    Sleep 1000
    Send !x
    StartEditAfterReady()
  } Else {
    MsgBox, a
  }
Return

HeliosBtnGuiGuiEscape:
  Gui, Destroy
Return

$^!z::
global hHeliosWnd, findingObj, impObj
if (hHeliosWnd) {
  Gui, HeliosBtnGui: New
  Gui, HeliosBtnGui:+AlwaysOnTop -MaximizeBox -MinimizeBox
  Gui, HeliosBtnGui: Font, s8, Verdana
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnCopyReport, Copy Report
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnClearAllText, Clear All Text
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnSaveAndNext, Save && Next
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnNormalCXR, Normal CXR
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnPcuNormalCXR, PCU CXR

  DetectHiddenWindows On
	Gui, +LastFound
  Gui, Show, Hide
  GUI_Hwnd := WinExist()
  GetClientSize(GUI_Hwnd, GUI_Width, GUI_Height)
  DetectHiddenWindows Off
  GetClientSize(hHeliosWnd, widthHelios, heightHelios)
  WinGetPos, xHelios, yHelios, , , ahk_id %hHeliosWnd%
  ;xHeliosBtnGui := xHelios + widthHelios - 30 - GUI_Width
  xHeliosBtnGui := xHelios + 630
  yHeliosBtnGui := yHelios + 280

  ;MsgBox, x=%GUI_Width%, GUI_Hwnd=%GUI_Hwnd%, hHeliosWnd=%hHeliosWnd%

  Gui, HeliosBtnGui: Show, x%xHeliosBtnGui% y%yHeliosBtnGui%
}

/*
;; to get bone density report by ajax.
  wb := WBGet()

  myL =
  ( %
    var compareArrays = function(a, b) {
      if (a === b)
        return true;
      if (a.length !== b.length)
        return false;
      for (var i = 0; i < a.length; i++){
        if(!(a[i] == b[i])) return false;
      };
      return true;
    };

    acc_no = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('input[name=OldAccNo]').val();
    report_area = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('textarea[name=ReportContent]');

    //alert(acc_no);

    $.support.cors = true;
    $.ajax({
      dataType: "json",
      url: "//bone-density.tsaiid.idv.tw/studies/report/" + acc_no + "/text",
      crossDomain: true
    }).done(function(data){
//      alert(data.report);
      my_p = $.map(data.report.match(/(\d+\s*%)/g), function(x){ return x.match(/(\d+)/)[1] });
      re_p = $.map(report_area.val().match(/(\d+\s*%)/g), function(x){ return x.match(/(\d+)/)[1] });
      my_s = $.map(data.report.match(/\([TZ]-score\s*=\s*-?[\d\.]+\)/g), function(x){ return x.match(/=\s*(-?[\d\.]+)/)[1] });
      re_s = $.map(report_area.val().match(/\([TZ]-score\s*=\s*-?[\d\.]+\)/g), function(x){ return x.match(/=\s*(-?[\d\.]+)/)[1] });
      my_c = data.report.match(/normal limit|low bone mass|osteoporosis|within the expected|below the expected/);
      re_c = data.report.match(/normal limit|low bone mass|osteoporosis|within the expected|below the expected/);

      if (!compareArrays(my_p, re_p) || !compareArrays(my_s, re_s) || !compareArrays(my_c, re_c)) {
        alert(data.report);
        //alert(my_p);
        //alert(re_p);
      }
      else {
        lst_bdy_lst_wrk = $('iframe[name=frameWrkList]').contents().find('#lstBdylstWrk');
        lst_length = lst_bdy_lst_wrk.children().length;

//        alert(lst_length);
        next_patient_index = -1;

        if (lst_length) {
          lst_bdy_lst_wrk.children().each(function(i){
            lst_acc_no = $(this).children().eq(3).children().eq(1).text();
            if (lst_acc_no == acc_no) {
              //if (i + 1 < lst_length){
                next_patient_index = i + 1;
              //}

              return false;
            }
          });
          //alert(next_patient_index);
        }

        if (next_patient_index > 0) {
          if (next_patient_index == lst_length)
            alert("ok");
          else
            lst_bdy_lst_wrk.children().eq(next_patient_index).click();
        }
      }
    }).fail(function(jqXHr, textStatus, errorThrown) {
        alert("ajax failed: " + textStatus);
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)
*/
Return
