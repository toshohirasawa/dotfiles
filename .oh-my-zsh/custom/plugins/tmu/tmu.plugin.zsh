TMU_VPN_ADDR=169.254.2.1

__wait_and_config_vpn() {
    pipe_name=$1
    while [ $(ifconfig | grep ${TMU_VPN_ADDR} | wc -l) -eq 0 ]; do
        sleep 0.5
    done
    vpn_if=$(ifconfig | grep -B 1 ${TMU_VPN_ADDR} | head -n1 | cut -d':' -f1)
    echo "VPN Interface: ${vpn_if}"
    sudo -S route add -net 133.10 -interface ${vpn_if}
}

function tmu-vpn() {
    pipe_name=/tmp/tmu-vpn$$
    mkfifo "${pipe_name}"

    __wait_and_config_vpn $pipe_name &
    sudo openfortivpn -c $HOME/.openfortivpn/tmu-vpn
    rm "${pipe_name}"
}
