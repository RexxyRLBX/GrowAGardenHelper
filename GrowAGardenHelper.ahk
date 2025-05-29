;AutoGUI creator: Alguimist autohotkey.com/boards/viewtopic.php?f=64&t=89901
;AHKv2converter creator: github.com/mmikeww/AHK-v2-script-converter
;EasyAutoGUI-AHKv2 github.com/samfisherirl/Easy-Auto-GUI-for-AHK-v2

#Requires AutoHotkey v2.0
#SingleInstance Force

;set ini Directory

iniFile := A_ScriptDir "\data.ini"

;load previous settings
prvDelay := IniRead(iniFile, "Settings", "Delay", 10)
prvAmmount := IniRead(iniFile, "Settings", "Ammount", 100)
Hidegui := IniRead(iniFile, "Settings", "Hidegui", false)


; Create the GUI

myGui := Gui("", "Grow a Garden Helper V1.0")

if Hidegui = 0
{
    myGui.Show("w250 h190")
}

myGui.Title := "Grow a Garden Helper V1.0"
myGui.OnEvent('Close', (*) => ExitApp())

myGui.Add("Text", "x8 y5 w228 h31 +0x200", "Grow A Garden Helper V1.0")
myGui.Add("GroupBox", "x8 y40 w148 h48", "Ammount")
myGui.Add("GroupBox", "x8 y88 w149 h52", "Delay (1000 = 1s)")

ButtonHidegui := myGui.Add("Checkbox", "x10 y150 w155 h30", "&Hide GUI (WARNING)")
ButtonRun := myGui.Add("Button", "x168 y45 w75 h137", "&Run")
Ammount := myGui.Add("Edit", "x22 y57 w120 h21 Number", prvAmmount)
Delay := myGui.Add("Edit", "x21 y109 w120 h21 Number" ,prvDelay)


ButtonRun.OnEvent("Click", RunButtonPressed)
ButtonHidegui.OnEvent("Click", RunHideguiButton)

F1::
{
    RunButtonPressed
}

F2::
{
  myGui.Show("w250 h190")
  MsgBox("The GUI has been Renabled.", "Gui information", 0x40)
  Hidegui := 0
    IniWrite(Hidegui, iniFile, "Settings", "hidegui")
}


;main function
RunButtonPressed(*) {

IniWrite(Delay.value, iniFile, "Settings", "Delay")
IniWrite(Ammount.value, iniFile, "Settings", "Ammount")

Timesleft := Ammount.value
WinActivate("Roblox")
myGui.Hide()

loop Ammount.value
{

 Sleep Delay.value
 Send "e"
 ToolTip "Times left: " Timesleft
 Timesleft -= 1

}

Run A_ScriptFullPath
ExitApp()

}




 
RunHideguiButton(*) {
  MsgBox("The GUI will be hidden permannetly!, EVEN ON STARTUP to show it again use the F2 key.", "Hide GUI Warning", 0x30)
  Hidegui := 1
  IniWrite(Hidegui, iniFile, "Settings", "hidegui")
  run A_ScriptFullPath
ExitApp()
}
