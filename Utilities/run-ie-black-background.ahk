NewBlackBackgroundIE(monNo) {
    BlackWebpageURL := "https://cdn.rawgit.com/tsaiid/dde222ef1177e4703037b22a30d8dc88/raw/black-background.html"

    ; get monitor info
    SysGet, monInfo, Monitor, %monNo%
    posX := monInfoLeft
    posY := monInfoTop

    if (posX != "" && posY != "") {
        wb := ComObjCreate("InternetExplorer.Application")
        winHandle := wb.hwnd
        wb.Visible := true
        WinMove, % "ahk_id " winHandle,, posX, posY
        wb.FullScreen := 1
        wb.Navigate(BlackWebpageURL)
    } Else {
        MsgBox, Monitor No. %monNo% does not exist.
    }
}

NewBlackBackgroundIE(1)
NewBlackBackgroundIE(2)
NewBlackBackgroundIE(3)
NewBlackBackgroundIE(4)
