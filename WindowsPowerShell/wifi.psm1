function wifi-l { netsh wlan show profile }
function wifi-pw ($name) 
{
    netsh wlan show profile $name key=clear | findstr "Name"
    netsh wlan show profile $name key=clear | findstr "Key Content"
}
