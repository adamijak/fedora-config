#! /bin/nu

def vpn-start [path: string] {
    let settings = (open $path)
    doas openconnect -v --os win --csd-user $nu.env.USER --csd-wrapper $settings.csdWrapperPath -s $"vpn-slice ($settings.allowedHosts | to csv -s ' ')" -c $settings.cert $settings.host
}
