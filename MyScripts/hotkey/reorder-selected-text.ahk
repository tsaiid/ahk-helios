; HotKey
;; Reordering the selected text

ReorderSeletedText(deOrder = False, keepEmptyLine = False, itemChar = "", discardSeIm = True){
  Clipboard := ""
  Send ^c
  Sleep, 300

  StringReplace, selectedText, Clipboard, `r`n, `n, All

  StringRight, strRight, selectedText, 1
  If (Ord(strRight) == Ord("`n")) {
    StringTrimRight, selectedText, selectedText, 1
    hadTrimmedRight := True
  }

  StringSplit, txtAry, selectedText, `n
  endLine := txtAry0

;  MsgBox, endLine = %endLine%, strRight = %ascStrRight%, ``n = %ascNewLine%

/*
  Loop, parse, clipboard, `n, `r
  {
    MsgBox, 4, , File number %A_Index% is %A_LoopField%.`n`nContinue?
    IfMsgBox, No, break
  }
*/

  If (StrLen(selectedText) > 0) {
    finalText := ""
    currLineNo := 0
    Loop, Parse, selectedText, `n
    {
      If (!RegExMatch(A_LoopField, "^\s*$")) {
        If (!deOrder) {
          orderChar := (StrLen(itemChar) > 0 ? itemChar : ++currLineNo . ".")
          finalText .= orderChar . " "
        }

        tmpText := A_LoopField
        ; remove (Se/Im: ...) string
        If (StrLen(itemChar) = 0 && discardSeIm) {
          tmpText := RegExReplace(tmpText, "\s*\(Ser?\/Img?:[\s,-\/\d]+\)", "")
          tmpText := RegExReplace(tmpText, "Mark L\d+:\s*", "")
        }

        ; remove unintended itemChar and uppercase the first char
        finalText .= RegExReplace(tmpText, "^(\s*)((\d+\.)|([-\+\*>])|(\(?\d+\)))?(\s*)(\w?)(.*)", "$u7$8")

        If (A_Index < endLine || hadTrimmedRight) {
          finalText .= "`r`n"
        }
      } Else {
        ; use a para to control if all line is empty, ignore it, and do not append an \n
        If (keepEmptyLine) {
          finalText .= A_LoopField . "`r`n"
        }
      }
    }
    /*
    If (isEndNewLine){
      finalText .= "`n"
    }
    */

    ;textRange.text := finalText
    ;MsgBox % finalText
    Clipboard := finalText
    Send ^v
  } Else {
    ; No selection. Do nothing.
    MsgBox, No content in the Clipboard.
  }
}
