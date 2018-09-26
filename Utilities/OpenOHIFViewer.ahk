; Open Study UID in OHIF viewer
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

F12::
  Send ^c
  ClipWait, 2
  Browser := "chrome.exe"
  ohif_url := "http://femh.tsai.it:3000/viewer/" + Clipboard
  Run, %browser% %ohif_url%
Return