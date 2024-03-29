#(@(& '~/AppData/Local/Programs/oh-my-posh/bin/oh-my-posh.exe' init pwsh --config='~\AppData\Local\Programs\oh-my-posh\themes\ --theme-- .omp.json' --print) -join "`n") | Invoke-Expression


# Add New Aliases Above-------------------------------------------------------------

Set-Alias eth get-netadapter
Set-Alias rr powershell

Set-Alias c clear
Set-Alias e nvim
Set-Alias nm nvim
Set-Alias np notepad
Set-Alias sd stop-computer
Set-Alias rb restart-computer
Set-Alias lnx wsl
Set-Alias lD get-volume

function ~ { cd ~ }
function q { exit }
function here { start . }
function to ($loc) { cd $loc }

function fi { cd ~\Files }
function dk { cd ~\Desktop }
function pc { cd ~\Pictures }
function dn { cd ~\Downloads }
function dc { cd ~\Documents }
function cd. { Set-Location .. }
function cd.. { Set-Location ..\.. }
function cd... { Set-Location ..\..\.. }

function w-s ($name) { winget search $name }
function w-i ($name) { winget install $name }
function w-ii ($name) { winget install "$name.$name" }
function w-r ($name) { winget remove $name }
function w-u ($name) { winget upgrade $name }
function w-l ($name) { winget list $name }
function w-u-a { winget upgrade --all }

function e-al { nvim $HOME\Documents\WindowsPowershell\Microsoft.PowerShell_profile.ps1 }
function e-nv { nvim $HOME\AppData\Local\nvim\init.vim }
function e-ml ($module) { nvim $HOME\Documents\WindowsPowershell\$module.psm1 }
function i-ml ($module) { import-module -DisableNameChecking $HOME\Documents\WindowsPowershell\$module.psm1 }
function c-ml ($module) { cat $HOME\Documents\WindowsPowershell\$module.psm1 }
function doit { adb shell settings put global hide_gesture_line 1 }


function touch($file) {
    "" | Out-File $file -Encoding ASCII
}

function df {
    get-volume
}

function ll { 
    Get-ChildItem -Path $pwd -File 
}

function la {
    Get-ChildItem -attributes Hidden
}

function sed($file, $find, $replace) {	
    (Get-Content $file).replace("$find", $replace) | Set-Content $file
}

function which($name) {
    Get-Command $name | Select-Object -ExpandProperty Definition
}

function grep($regex, $dir) {
    if ( $dir ) {
        Get-ChildItem $dir | select-string $regex
        return
    }
    $input | select-string $regex
}

function unzip ($file) {
    Write-Output("Extracting", $file, "to", $pwd)
    $fullFile = Get-ChildItem -Path $pwd -Filter .\cove.zip | ForEach-Object { $_.FullName }
    Expand-Archive -Path $fullFile -DestinationPath $pwd
}

function find-file($name) {
    Get-ChildItem -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
        $place_path = $_.directory
        Write-Output "${place_path}\${_}"
    }
}

function locate($name) {
    Get-ChildItem -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
        $place_path = $_.directory
        Write-Output "${place_path}\${_}"
    }
}

function ff($name) {
    Get-ChildItem -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
        $place_path = $_.directory
        Write-Output "${place_path}\${_}"
    }
}
