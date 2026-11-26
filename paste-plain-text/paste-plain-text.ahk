#Requires AutoHotkey v2.0
#SingleInstance Force

; PASTE AS PLAIN TEXT
; Ctrl+Shift+V pastes the clipboard without formatting (fonts, colours, links, tables).
; Your clipboard is put back afterwards, so a normal Ctrl+V still pastes with formatting.

^+v:: PastePlainText()

PastePlainText() {
    ; If files are copied (e.g. in Explorer), just do a normal paste
    if DllCall("IsClipboardFormatAvailable", "UInt", 15) {   ; 15 = CF_HDROP (files)
        Send "^v"
        return
    }

    text := A_Clipboard          ; the plain-text version of whatever is copied
    if (text = "")               ; nothing text-like on the clipboard (e.g. an image)
        return

    saved := ClipboardAll()      ; back up the full clipboard, formatting included

    A_Clipboard := ""            ; clear first so ClipWait can tell when the text is in
    A_Clipboard := text
    if !ClipWait(1) {            ; give up if the clipboard didn't update within 1 second
        A_Clipboard := saved
        return
    }

    Send "^v"
    Sleep 200                    ; let the program finish pasting before restoring

    A_Clipboard := saved         ; put the original clipboard back
}