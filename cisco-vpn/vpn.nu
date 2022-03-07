#! /bin/nu

def vpn-start [--config-path: string] {
    let settings = open (if $config-path == null { "~/.config/cisco-vpn/settings.json" })

    doas openconnect -v --os win --csd-user $nu.env.USER --csd-wrapper $settings.csdWrapperPath -s $"vpn-slice ($settings.allowedHosts | to csv -s ' ')" -c $settings.cert $settings.host
}
