; Gui related

GuiClose:
LLDGuiEscape:
  Gui, Destroy
Return

LLDButtonOK:
  Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
  If (LLDFormRtLL = "" || LLDFormLtLL = "") {
    MsgBox, Empty value
    Return
  }

  RtLL := Round(LLDFormRtLL / 10, 1)
  LtLL := Round(LLDFormLtLL / 10, 1)
  delta := Round(Abs(RtLL - LtLL), 1)
  MeningfulLLD := (delta >= 1 ? "Evidence of leg length discrepancy." : "No evidence of leg length discrepancy.")
  MyForm =
(
Triple film of lower extremities in standing AP projection :
  1. %MeningfulLLD%:
     Rt low limb measures %RtLL% cm
     Lt low limb measures %LtLL% cm
     LLD : %delta% cm
)
  Gui, Destroy
  WinActivate, ahk_id %hParentWnd%
  Paste(MyForm)

  ;for Helios, fill impression
  SleepThenTab()
  Paste(MeningfulLLD)
Return

;; for LLD form

LLDForm()
{
  global LLDFormRtLL, LLDFormLtLL
  Gui, LLD: New
  Gui, font, s12, Verdana
  Gui, LLD: Add, Text, x12 y22 w160 h20, Right Leg Length
  Gui, LLD: Add, Text, x12 y72 w160 h20, Left Leg Length
  Gui, LLD: Add, Edit, x162 y20 w80 h22 vLLDFormRtLL Number,
  Gui, LLD: Add, Edit, x162 y70 w80 h22 vLLDFormLtLL Number,
  Gui, LLD: Add, Text, x252 y22 w30 h20, mm
  Gui, LLD: Add, Text, x252 y72 w30 h20, mm
  Gui, LLD: Add, Button, x12 y120 w40 h30 gLLDButtonOK default, OK

  ; ShowGUIatCurrScreenCenter
  ;get current monitor index
	CurrentMonitorIndex:=GetCurrentMonitorIndex()
	;get Hwnd of current GUI
	DetectHiddenWindows On
	Gui, +LastFound
	Gui, Show, Hide
	GUI_Hwnd := WinExist()
	;Calculate size of GUI
	GetClientSize(GUI_Hwnd,GUI_Width,GUI_Height)
	DetectHiddenWindows Off
	;Calculate where the GUI should be positioned
	GUI_X:=CoordXCenterScreen(GUI_Width,CurrentMonitorIndex)
	GUI_Y:=CoordYCenterScreen(GUI_Height,CurrentMonitorIndex)

  Gui, Show, % "x" GUI_X " y" GUI_Y, LLD Helper
}

;; for Fleischner Society 2017 guidelines
Fleischner2017Form()
{
  ;global FsgRadioGroup
  Gui, FSG: New
  Gui, font, s10, Verdana

  Gui, Add, Text, , Solid
  Gui, Add, GroupBox, xm ym+20 Section w245 h90, Single
  Gui, Add, GroupBox, xm+255 ym+20 Section w245 h90, Multiple
  Gui, Add, Text, xm, Subsolid
  Gui, Add, GroupBox, xm ym+140 Section w150 h70, Single GGN
  Gui, Add, GroupBox, xm+170 ym+140 Section w150 h70, Single part solid
  Gui, Add, GroupBox, xm+340 ym+140 Section w150 h70, Multiple
  ; Solid single
  Gui, Add, Radio, xm+10  ym+40  vFsgRadioGroup   , < 6 mm
  Gui, Add, Radio, xm+10  ym+60                   , 6-8 mm
  Gui, Add, Radio, xm+10  ym+80                   , > 8 mm
  ; Solid multiple
  Gui, Add, Radio, xm+265  ym+40                  , < 6 mm
  Gui, Add, Radio, xm+265  ym+60                  , 6-8 mm
  Gui, Add, Radio, xm+265  ym+80                  , > 8 mm

  ; Subsolid single GGN
  Gui, Add, Radio, xm+10  ym+160                   , < 6 mm
  Gui, Add, Radio, xm+10  ym+180                   , >= 6 mm
  ; Subsolid single part solid
  Gui, Add, Radio, xm+180  ym+160                   , < 6 mm
  Gui, Add, Radio, xm+180  ym+180                   , >= 6 mm
  ; Subsolid multiple
  Gui, Add, Radio, xm+350  ym+160                  , < 6 mm
  Gui, Add, Radio, xm+350  ym+180                  , >= 6 mm

  Gui, Add, Button, xm gFsgButtonOK default, OK

  Gui, Show, AutoSize Center, Fleischner 2017 Guidelines Helper
}

FsgButtonOK:
  Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
  If (FsgRadioGroup == 0) {
    MsgBox, Empty value
    Return
  }

  FsgRecommendations := ["no routine follow-up in low risk patients; optional CT at 12 months in high risk patients."
                       , "CT at 6-12 months, then at 18-24 months in high risk patients."
                       , "consider CT at 3 months, PET/CT, or tissue sampling."

                       , "no routine follow-up in low risk patients; optional CT at 12 months in high risk patients."
                       , "CT at 3-6 months, then at 18-24 months in high risk patients."
                       , "CT at 3-6 months, then at 18-24 months in high risk patients."

                       , "no routine follow-up."
                       , "CT at 6-12 months to confirm persistence, then CT every 2 years until 5 years."

                       , "no routine follow-up"
                       , "CT at 3-6 months to confirm persistence. If unchanged and solid component remains < 6 mm, annual CT should be performed for 5 years."

                       , "CT at 3-6 months. If stable, consider CT at 2 and 4 years."
                       , "CT at 3-6 months. Subsequent management based on the most suspicious nodule(s)."]

  MyForm := "Fleischner Society 2017 Guidelines recommends: " + FsgRecommendations[FsgRadioGroup]

  Gui, Destroy
  WinActivate, ahk_id %hParentWnd%
  Paste(MyForm)
  ;MsgBox, %FsgRadioGroup%`n%MyForm%
Return
