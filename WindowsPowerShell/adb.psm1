# ADB PowerShell Aliases

Set-Alias adb "c:\Tools\ADB\adb"
Set-Alias gdb "c:\Tools\ADB\uad_gui-windows"

function adb-r($name) {adb uninstall --user 0 $name}

function doit { adb shell settings put global hide_gesture_line 1 }
function bee { echo "Beetroot" }
