# ADB PowerShell Aliases

Set-Alias adb "c:\Tools\ADB\adb"
Set-Alias gdb "c:\Tools\ADB\uad_gui-windows"

function adb-r($name) {adb uninstall --user 0 $name}

function adb-r-a ($name) {
    $packages = @(
        "com.android.bipscom.android.emergency",
        "com.google.android.feedback",
        "com.google.android.youtube",
        "com.google.android.googlequicksearchbox",
        "com.google.android.videos",
        "com.google.android.apps.safetyhub",
        "com.google.android.cellbroadcastreceiver",
        "com.google.android.cellbroadcastreceiver.overlay.miui",
        "com.google.android.cellbroadcastservice",
        "com.google.android.cellbroadcastservice.overlay.miui",
        "com.google.android.apps.subscriptions.red",
        "com.google.android.marvin.talkback",
        "com.google.android.partnersetup",
        "com.mediatek.mdmconfig",
        "com.google.android.apps.nbu.paisa.user",
        "com.google.android.apps.chromecast.app",
        "com.google.android.apps.tachyon",
        "com.netflix.mediaclient",
        "com.google.android.apps.magazines",
        "com.google.android.youtube.music",
        "com.google.android.apps.youtube.music",
        "com.miui.backup",
        "com.miui.bugreport",
        "com.miui.analytics",
        "com.mfashiongaller.emag",
        "com.mi.android.globalpersonalassistant",
        "com.miui.cleaner",
        "com.miui.cloudbackup",
        "com.miui.daemon",
        "com.miui.cloudservice",
        "com.miui.fmservice",
        "com.miui.guardprovider",
        "com.miui.micloudsync",
        "com.miui.miservice",
        "com.xiaomi.joyose",
        "com.miui.msa.global",
        "com.xiaomi.calendar",
        "com.xiaomi.payment",
        "com.xiaomi.xmsfkeeper"
    )

    foreach ($package in $packages) {
        Write-Host "Uninstalling package: $package"
        & adb uninstall --user 0 $package
    }
}
