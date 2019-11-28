; Private
;; it will be ignored from the repo

;; Login
#IfWinActive ahk_group FemhLogin
^!l::
  SendEvent 95485{Tab}8000femh{Enter}
Return
#IfWinActive