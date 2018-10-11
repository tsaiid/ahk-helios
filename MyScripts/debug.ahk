; for debug
#IfWinActive ahk_exe Helios.exe

#IfWinActive

#IfWinActive ahk_group Helios

^7::
	CoordMode, Mouse, Screen
  ;MsgBox % A_CoordModeMouse
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
    r := WinHttpRequest("https://femhrad.tsai.it/ris/recent-similar-report/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 1`nNO_AUTO_REDIRECT")
    parsedResult := JSON.Load(InOutData)
    examdateStr := parsedResult.report.examdate
    findingStr := parsedResult.report.findings
    impStr := parsedResult.report.impression
    ;MsgBox % InOutData

    r := WinHttpRequest("https://dicom.icu/cxr/prob/" + accno, InOutData := "", InOutHeaders := "", "Timeout: 1`nNO_AUTO_REDIRECT")
    parsedResult := JSON.Load(InOutData)
    if (parsedResult.success) {
      prob := parsedResult.probabilities
      normalStr := "Normal: " + prob.normal
      cardiomegalyStr := "Cardiomegaly: " + prob.cardiomegaly
      ettStr := "ETT: " + prob.ett
      portStr := "Port-A: " + prob.port
    }
  } else {
    findingStr =
    impStr =

    normalStr =
    cardiomegalyStr =
    ettStr =
    portStr =
  }

  Gui, PrevReportGui: Font, s12 cFFFFFF, Verdana
  If (findingStr || impStr) {
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP% xm, %examdateStr%
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP%, ----`r`n%findingStr%
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP%, ----`r`n%impStr%
    Gui, PrevReportGui: Font, s9, Verdana
    Gui, PrevReportGui: Add, Button, gCopyPrevSimilarReport, Copy Report
    Gui, PrevReportGui: Add, Button, gHeliosBtnClearAllText x+10, Clear All Test
  }

  Gui, PrevReportGui: Font, s9 cFFFFFF, Verdana
  If (normalStr || cardiomegalyStr || ettStr || portStr) {
    Gui, PrevReportGui: Add, text, +Wrap w%_GUI_TEXTWRAP% xm, %normalStr%`r`n%cardiomegalyStr%`r`n%ettStr%`r`n%portStr%
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

PrevReportGuiGuiEscape:
  Gui, Destroy
Return

; Remap Kana Key
SC070::
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

;    WinActivate, ahk_exe Helios.exe
    Send ^t
    findingObj := Acc_Get("Object", "4.9.30.1", 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", "4.9.33", 0, "ahk_id " hHeliosWnd)
    findingObj.accValue(0) := "No abnormal patch opacity in the lung fields.`r`nNo cardiomegaly."
    impObj.accValue(0) := "No active lung lesion."
    Send !c
    Sleep 1000
    Send !x
    StartEditAfterReady()
  } Else {
    MsgBox, a
  }
Return

^+c::
  If (!CopyPrevReport()) {
    Send ^+c
    ;MsgBox, Send Original ^+c
  }
Return

#IfWinActive

CopyPrevReport(){
  WinGet, hWnd, ID, Helios

  If (hWnd) {
    prevFindingText := Acc_Get("Value", "4.7.2.1.6", 0, "ahk_id " hWnd)
    prevImpText := Acc_Get("Value", "4.7.2.1.9", 0, "ahk_id " hWnd)
    findingObj := Acc_Get("Object", "4.9.31.1", 0, "ahk_id " hWnd)
    impObj := Acc_Get("Object", "4.9.34", 0, "ahk_id " hWnd)

    reportStatusText := Acc_Get("Name", "4.7.2.1.4", 0, "ahk_id " hWnd)
    ;MsgBox % reportStatusText
    If (reportStatusText) {
      ;MsgBox % prevFindingText
      findingObj.accValue(0) := findingObj.accValue(0) . prevFindingText
      impObj.accValue(0) := impObj.accValue(0) . prevImpText

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
    prevFindingText := Acc_Get("Value", "4.7.2.1.6", 0, "ahk_id " hHeliosWnd)
    prevImpText := Acc_Get("Value", "4.7.2.1.9", 0, "ahk_id " hHeliosWnd)
    findingObj := Acc_Get("Object", "4.9.31.1", 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", "4.9.34", 0, "ahk_id " hHeliosWnd)
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
    findingObj := Acc_Get("Object", "4.9.31.1", 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", "4.9.34", 0, "ahk_id " hHeliosWnd)
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
  ;hHeliosWnd := WinExist("ahk_class HwndWrapper[Helios.exe")
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

    ;ControlSend, , ^t, ahk_id hHeliosWnd
    WinActivate, ahk_exe Helios.exe
    Send ^+t
    ;prevFindingText := Acc_Get("Value", "4.7.2.1.6", 0, "ahk_id " hHeliosWnd)
    ;prevImpText := Acc_Get("Value", "4.7.2.1.9", 0, "ahk_id " hHeliosWnd)
    findingObj := Acc_Get("Object", "4.9.31.1", 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", "4.9.34", 0, "ahk_id " hHeliosWnd)
    ;MsgBox % impText.accValue(0)
    ;MsgBox % newStr
    ; Save content to Clipboard
    ;Clipboard := findingObj.accValue(0) . "`r`n`r`n" . impObj.accValue(0)
    findingObj.accValue(0) := "No abnormal patch opacity in the lung fields.`r`nNo cardiomegaly."
    impObj.accValue(0) := "No active lung lesion."
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
    findingObj := Acc_Get("Object", "4.9.31.1", 0, "ahk_id " hHeliosWnd)
    impObj := Acc_Get("Object", "4.9.34", 0, "ahk_id " hHeliosWnd)
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

;; to get bone density report by ajax.
$^!z::
hHeliosWnd := WinExist("Helios ahk_exe Helios.exe")
if (hHeliosWnd) {
  Gui, HeliosBtnGui: New
  Gui, HeliosBtnGui:+AlwaysOnTop -MaximizeBox -MinimizeBox
  Gui, HeliosBtnGui: Font, s8, Verdana
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnCopyReport, Copy Report
  Gui, HeliosBtnGui: Add, Button, x+10 gHeliosBtnClearAllText, Clear All Test
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
