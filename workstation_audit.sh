#! bin/bash
mkdir /tmp/audit;
echo -e "Uptime:" "\n$(uptime)" > /tmp/audit/workstation_audit_output.log;
echo -e "\nCurrent Users:" "\n$(whoami)" >> /tmp/audit/workstation_audit_output.log;
echo -e "\nRecent logins:" "\n$(last)" >> /tmp/audit/workstation_audit_output.log;
echo -e "\nTop-10 processes by RAM/CPU usage:" "\n$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head)" >> /tmp/audit/workstation_audit_output.log;
echo -e "\nOpen tcp/udp ports:" "\n$(ss -tulpn)" >> /tmp/audit/workstation_audit_output.log;
echo -e "\nVirtual memory usage:" "\n$(free)" >> /tmp/audit/workstation_audit_output.log;
echo -e "\nUsage of disk space:" "\n$(df -h)" >> /tmp/audit/workstation_audit_output.log
