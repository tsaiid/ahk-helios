NewBlackBackgroundIE(posX) {
    wb := ComObjCreate("InternetExplorer.Application")
    winHandle := wb.hwnd
    wb.Visible := true
    WinMove, % "ahk_id " winHandle,, posX, 0
    wb.FullScreen := 1
    wb.Navigate("https://cdn.rawgit.com/tsaiid/dde222ef1177e4703037b22a30d8dc88/raw/black-background.html")
}

NewBlackBackgroundIE(1200)
NewBlackBackgroundIE(3000)
NewBlackBackgroundIE(4600)
