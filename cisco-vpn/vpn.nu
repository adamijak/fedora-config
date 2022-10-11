#! /bin/nu

def vpn-start [--config_path: string = $'($nu.home-path)/.config/cisco-vpn/settings.json'] {
    let settings = open $config_path
    let script = $'"python3.10 (whereis -b vpn-slice | split row " " | str replace "\n" "" | last) ($settings.allowedHosts | str collect " ")"'

    doas openconnect --os win --csd-user $env.USER --csd-wrapper $settings.csdWrapperPath -s $script -c $settings.cert $settings.host
}
