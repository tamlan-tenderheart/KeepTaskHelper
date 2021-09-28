; Keep Task Helper 1.0
; Written by Tamlan Tenderheart
;
; A script to assist in obtaining Keep Tasks on the Dark Age of Camelot Brotherlands Server
; To use this script, you must have AHK (https://www.autohotkey.com/) installed.
;
; Usage:
; 1. Press F1 to bring up the configuration UI.
; 2. Select which tower or keep you want to obtain a task for. 
; 3. Switch back to the game and target a Central Keep Captain (Tower captains will not work)
; 4. Press F2. 
;
; If successful, the Keep Captain will confirm that you have engaged the task with a dialog message in-game.

#SingleInstance, force
#MaxThreadsPerHotkey 2

; Variables
AlbionKeeps := ["Caer Benowyc","Caer Berkstead","Caer Boldiam","Caer Hurbury","Caer Erasleigh","Caer Renaris","Caer Sursbrooke"]
HiberniaKeeps := ["Dun Ailinne","Dun Da Behn","Dun Bolg","Dun Crauchon","Dun Crimthain","Dun Nged","Dun Scathaig"]
MidgardKeeps := ["Arvakr Faste","Bledmeer Faste","Blendrake Faste","Fensalir Faste","Glenlock Faste","Hlidskialf Faste","Nottmoor Faste"]
;Towers := ["Guardtower","Outpost","Spire","Watchtower"]

; GUI
Gui, Add, TreeView, x12 y9 w320 h310
Gui, Add, Text, x12 y329 320 h30 , Press F2 to send the selected target to the active Window

Albion   := AddKeeps("Albion",AlbionKeeps)
Hibernia := AddKeeps("Hibernia",HiberniaKeeps)
Midgard  := AddKeeps("Midgard",MidgardKeeps)

AddKeeps(RealmName,Keeps)
{
    Realm := TV_Add(RealmName)
    For index,KeepName in Keeps
    {
        Keep := TV_Add(KeepName,Realm)
        TV_Add(KeepName . " Guardtower", Keep)
        TV_Add(KeepName . " Outpost", Keep)
        TV_Add(KeepName . " Spire", Keep)
        TV_Add(KeepName . " Watchtower", Keep)
    }
    return Realm
}

; Uncomment the following line if the script should only launch when the DAOC game window has focus
; #IfWinActive ahk_exe game.dll

; Bindings

F1::
Gui, Show, h374 w347, Keep Task Helper -- by Tamlan Tenderheart
Return

F2::
SelectedID := TV_GetSelection()
If( SelectedID != 0 AND SelectedID != Albion AND SelectedID != Hibernia AND SelectedID != Midgard)
{
    TV_GetText(Target, SelectedID)
    Parent := TV_GetParent(SelectedID)
    If(Parent = Albion OR Parent = Hibernia OR Parent = Midgard)
    {
        Send, /whisper Keep Capture %Target%{Enter}
    }
    Else
    {
        Send, /whisper Tower Capture %Target%{Enter}
    }
}
Return