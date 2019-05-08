; Magnify GE UV grid

#IfWinActive ahk_exe Miv2Lib.exe
^!m::
  MagnifyGeUvGrid()
Return
#IfWinActive

MagnifyGeUvGrid(grid = 4) {
  If (WinActive("ahk_exe Miv2Lib.exe")) {
    WinGetPos, , , WindowWidth, WindowHeight

    GridCenterX := [860, 860, 2300, 2300]
    GridCenterY := [610, 1580, 610, 1580]
    UpMovePixel := 90

    MouseGetPos, xpos, ypos
    Loop 4
    {
      centerX := GridCenterX[A_Index]
      centerY := GridCenterY[A_Index]
      centerYup := GridCenterY[A_Index] - UpMovePixel
      MouseClickDrag, Middle, centerX, centerY, centerX, centerYup, 6
    }
  }
}