# Paste Plain Text

Paste copied text without its formatting: no fonts, colours, sizes, links or tables. It works in any program.

Part of [ahk-scripts](../README.md). See the main README for requirements and how to run scripts.

## Usage

| Shortcut | What it does |
|---|---|
| `Ctrl + Shift + V` | Paste as plain text |
| `Ctrl + V` | Normal paste, unchanged |

Copy something from a website, PDF or Word document, then press `Ctrl + Shift + V` where you want it. The text takes on the formatting of wherever you paste it.

Your clipboard is restored after pasting, so you can still use `Ctrl + V` to paste the same content *with* its formatting.

## Behaviour

- **Text** (from websites, Word, PDFs, emails…): pasted as plain text.
- **Files** copied in Explorer: pasted normally, as if you'd pressed `Ctrl + V`.
- **Images** or other non-text content: nothing happens.

## Notes

- Some programs, like Chrome, Edge and Teams, already use `Ctrl + Shift + V` for plain-text paste. The script does the same thing there, so nothing changes.
- **Paste goes wrong in a slow program?** If you get the old clipboard content instead of the plain text, increase the `Sleep 200` value in the script (for example to `400`).
- **To use a different shortcut**, change `^+v` at the top of the script. `^` is Ctrl, `+` is Shift, `!` is Alt and `#` is the Windows key. For example, `#+v` would be Win+Shift+V.