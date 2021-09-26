; Keep Task Helper 1.0
; A script to assist in obtaining Keep Tasks on the Dark Age of Camelot Brotherlands Server
; Written by Tamlan Tenderheart
;
; Usage:
; Press F1 to bring up the configuration UI. Here you select which tower or keep you want
; to obtain a task for. Select a Keep Captain and press F2. If successful, the keep Captain
; will confirm the task with a dialog message in-game.

#SingleInstance, force
#MaxThreadsPerHotkey 2

; GUI
Gui, Add, TreeView, x12 y9 w320 h310
Gui, Add, Text, x12 y329 320 h30 , Press F2 to send the selected target to the active Window

Albion := TV_Add("Albion",,+Bold)
Benowyc := TV_Add("Caer Benowyc", Albion)
TV_Add("Caer Benowyc Guardtower", Benowyc)
TV_Add("Caer Benowyc Outpost", Benowyc)
TV_Add("Caer Benowyc Spire", Benowyc)
TV_Add("Caer Benowyc Watchtower", Benowyc)

Berkstead := TV_Add("Caer Berkstead", Albion)
TV_Add("Caer Berkstead Guardtower", Berkstead)
TV_Add("Caer Berkstead Outpost", Berkstead)
TV_Add("Caer Berkstead Spire", Berkstead)
TV_Add("Caer Berkstead Watchtower", Berkstead)

Hurbury := TV_Add("Caer Hurbury", Albion)
TV_Add("Caer Hurbury Guardtower", Hurbury)
TV_Add("Caer Hurbury Outpost", Hurbury)
TV_Add("Caer Hurbury Spire", Hurbury)
TV_Add("Caer Hurbury Watchtower", Hurbury)

Erasleigh := TV_Add("Caer Erasleigh", Albion)
TV_Add("Caer Erasleigh Guardtower", Erasleigh)
TV_Add("Caer Erasleigh Outpost", Erasleigh)
TV_Add("Caer Erasleigh Spire", Erasleigh)
TV_Add("Caer Erasleigh Watchtower", Erasleigh)

Renaris := TV_Add("Caer Renaris", Albion)
TV_Add("Caer Renaris Guardtower", Renaris)
TV_Add("Caer Renaris Outpost", Renaris)
TV_Add("Caer Renaris Spire", Renaris)
TV_Add("Caer Renaris Watchtower", Renaris)

Sursbrook := TV_Add("Caer Sursbrooke", Albion)
TV_Add("Caer Sursbrook Guardtower", Sursbrook)
TV_Add("Caer Sursbrook Outpost", Sursbrook)
TV_Add("Caer Sursbrook Spire", Sursbrook)
TV_Add("Caer Sursbrook Watchtower", Sursbrook)

Hibernia := TV_Add("Hibernia",,+Bold)
Ailinne := TV_Add("Dun Ailinne", Hibernia)
TV_Add("Dun Ailinne Guardtower", Ailinne)
TV_Add("Dun Ailinne Outpost", Ailinne)
TV_Add("Dun Ailinne Spire", Ailinne)
TV_Add("Dun Ailinne Watchtower", Ailinne)

Behn := TV_Add("Dun Da Behn", Hibernia)
TV_Add("Dun Da Behn Guardtower", Behn)
TV_Add("Dun Da Behn Outpost", Behn)
TV_Add("Dun Da Behn Spire", Behn)
TV_Add("Dun Da Behn Watchtower", Behn)

Bolg := TV_Add("Dun Bolg", Hibernia)
TV_Add("Bolg Bolg Guardtower", Bolg)
TV_Add("Bolg Bolg Outpost", Bolg)
TV_Add("Bolg Bolg Spire", Bolg)
TV_Add("Bolg Bolg Watchtower", Bolg)

Crauchon := TV_Add("Dun Crauchon", Hibernia)
TV_Add("Dun Crauchon Guardtower", Crauchon)
TV_Add("Dun Crauchon Outpost", Crauchon)
TV_Add("Dun Crauchon Spire", Crauchon)
TV_Add("Dun Crauchon Watchtower", Crauchon)

Crimthain := TV_Add("Dun Crimthain", Hibernia)
TV_Add("Dun Crimthain Guardtower", Crimthain)
TV_Add("Dun Crimthain Outpost", Crimthain)
TV_Add("Dun Crimthain Spire", Crimthain)
TV_Add("Dun Crimthain Watchtower", Crimthain)

Nged := TV_Add("Dun Nged", Hibernia)
TV_Add("Dun Nged Guardtower", Nged)
TV_Add("Dun Nged Outpost", Nged)
TV_Add("Dun Nged Spire", Nged)
TV_Add("Dun Nged Watchtower", Nged)

Scathaig := TV_Add("Dun Scathaig", Hibernia)
TV_Add("Dun Scathaig Guardtower", Scathaig)
TV_Add("Dun Scathaig Outpost", Scathaig)
TV_Add("Dun Scathaig Spire", Scathaig)
TV_Add("Dun Scathaig Watchtower", Scathaig)

Midgard := TV_Add("Midgard",,+Bold)
Arvakr := TV_Add("Arvakr Faste", Midgard)
TV_Add("Arvakr Faste Guardtower", Arvakr)
TV_Add("Arvakr Faste Outpost", Arvakr)
TV_Add("Arvakr Faste Spire", Arvakr)
TV_Add("Arvakr Faste Watchtower", Arvakr)

Bledmeer := TV_Add("Bledmeer Faste", Midgard)
TV_Add("Bledmeer Faste Guardtower", Bledmeer)
TV_Add("Bledmeer Faste Outpost", Bledmeer)
TV_Add("Bledmeer Faste Spire", Bledmeer)
TV_Add("Bledmeer Faste Watchtower", Bledmeer)

Blendrake := TV_Add("Blendrake Faste", Midgard)
TV_Add("Blendrake Faste Guardtower", Blendrake)
TV_Add("Blendrake Faste Outpost", Blendrake)
TV_Add("Blendrake Faste Spire", Blendrake)
TV_Add("Blendrake Faste Watchtower", Blendrake)

Fensalir := TV_Add("Fensalir Faste", Midgard)
TV_Add("Fensalir Faste Guardtower", Fensalir)
TV_Add("Fensalir Faste Outpost", Fensalir)
TV_Add("Fensalir Faste Spire", Fensalir)
TV_Add("Fensalir Faste Watchtower", Fensalir)

Glenlock := TV_Add("Glenlock Faste", Midgard)
TV_Add("Glenlock Faste Guardtower", Glenlock)
TV_Add("Glenlock Faste Outpost", Glenlock)
TV_Add("Glenlock Faste Spire", Glenlock)
TV_Add("Glenlock Faste Watchtower", Glenlock)

Nottmoor := TV_Add("Nottmoor Faste", Midgard)
TV_Add("Nottmoor Faste Guardtower", Nottmoor)
TV_Add("Nottmoor Faste Outpost", Nottmoor)
TV_Add("Nottmoor Faste Spire", Nottmoor)
TV_Add("Nottmoor Faste Watchtower", Nottmoor)

; Bindings

F1::
Gui, Show, xCenter yCenter h374 w347, Keep Task Helper -- by Tamlan Tenderheart
Return

F2::
SelectedID := TV_GetSelection()
If( SelectedTarget != 0 AND SelectedID != Albion AND SelectedID != Hibernia AND SelectedID != Midgard)
{
    TV_GetText(Target, SelectedID)
    Parent := TV_GetParent(SelectedID)
    If(Parent = Albion OR Parent = Hibernia OR Parent = Midgard)
    {
        Send, "/whisper Keep Capture %Target%{Enter}
    }
    Else
    {
        Send, "/whisper Tower Capture %Target%{Enter}
    }
}
Return

GuiClose:
ExitApp