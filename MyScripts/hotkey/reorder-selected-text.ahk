; HotKey
;; Reordering the selected text

ReorderSeletedText(deOrder = false, keepEmptyLine = false, itemChar = ""){
  clipboard := ""
  SendEvent ^c
  Sleep, 300

/*
  Loop, parse, clipboard, `n, `r
  {
    MsgBox, 4, , File number %A_Index% is %A_LoopField%.`n`nContinue?
    IfMsgBox, No, break
  }
*/

  ; numbering the selected text
  selectedText := clipboard
  normalizedValue := clipboard
  StringReplace, normalizedValue, normalizedValue, `r`n, `n, All
  StringSplit, norAry, normalizedValue, `n
  endLine := norAry0
  If (StrLen(selectedText) > 0) {
    finalText := ""
    currLineNo := 0
    Loop, Parse, normalizedValue, `n
    {
      If (!RegExMatch(A_LoopField, "^\s*$")) {
        If (!deOrder) {
          orderChar := (StrLen(itemChar) > 0 ? itemChar : ++currLineNo . ".")
          finalText .= orderChar . " "
        }
        finalText .= RegExReplace(A_LoopField, "^(\s*)((\d+\.)|([-\+\*])|(\(?\d+\)))?(\s*)(\w?)(.*)", "$u7$8")

        If (A_Index < endLine)
          finalText .= "`n"
      } Else {
        ; use a para to control if all line is empty, ignore it, and do not append an \n
        If (keepEmptyLine) {
          finalText .= A_LoopField . "`n"
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
    clipboard := finalText
    SendEvent ^v
  } Else {
    ; No selection. Do nothing.
    MsgBox, No content in the Clipboard.
  }
}
