#! /bin/nu

def vpn-start [--config-path: string] {
    let settings = open (if $config-path == $nothing { $'($nu.home-path)/.config/cisco-vpn/settings.json' })
    let script = $'"vpn-slice ($settings.allowedHosts | str collect " ")"'
    
    doas openconnect --os win --csd-user $env.USER --csd-wrapper $settings.csdWrapperPath -s $script -c $settings.cert $settings.host
}
