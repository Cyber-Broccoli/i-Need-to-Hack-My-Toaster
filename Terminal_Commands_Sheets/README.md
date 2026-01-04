# Journalctl
Formely syslog, where files were in /var/log/syslog, now moved to journalctl since Debian12
The “Journald” is a system program from the systemd tool that collects data from multiple logs in a binary format. It works the same way as syslog but gives a more efficient way to manage logs.

The Linux system has an effective tool termed “journalctl” that helps the user read and communicate with the “journal logs”.
This utility is a standard way to display log messages provided by journald and monitor them.



journalctl --since yesterday --until "6 hours ago"

-r / --reverse : most recent lines before

--unit syslog

-n / --lines   display N lines

-q / --quiet  don't show info

-f / --follow

--disk-usage : show total disk usage of journal files

-p / --priority  : display only for specified priority 1) alert 2) crit 3) error 4) warning 7) debug

--facility=help  display all types of log

# Logger

logger -s "This message will be added in the logs!"
