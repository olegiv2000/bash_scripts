#! bin/bash
mkdir /tmp/os_info;
echo -e "SysInfo:" "\n$(uname -a)" >/tmp/os_info/os_info_output.txt;
echo -e "\nUsername:" "\n$USER" >>/tmp/os_info/os_info_output.txt;
echo -e "\nHostname:" "\n$HOSTNAME" >>/tmp/os_info/os_info_output.txt;
echo -e "\nInterface config:" "\n$(ifconfig -s)" >>/tmp/os_info/os_info_output.txt;
echo -e "\nNetwork interfaces:" "\n$(ip link show)" >>/tmp/os_info/os_info_output.txt;
echo -e "\nFirewall version:" "\n$(sudo ufw version)" >>/tmp/os_info/os_info_output.txt;
echo -e "\nServername:" "\n$(cat /etc/resolv.conf| grep nameserver)" >>/tmp/os_info/os_info_output.txt;
echo -e "\nThe number of seconds the script has been running for:" "\n$SECONDS" >>/tmp/os_info/os_info_output.txt
