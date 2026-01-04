#!/bin/bash
# Bash script to examine PNG files in the current directory through HTML.

# Example: after using cutycapt to loop for every ip in a file a take a screenshot of each web page
# for ip in $(cat nmap-scan_10.11.1.1-254 | grep 80 | grep -v "Nmap" | awk '{print $2}'); do cutycapt --url=$ip --out=$ip.png; done

echo "<HTML><BODY><BR>" > web.html

ls -1 *.png | awk -F : '{print $1":\n<BR><IMG SRC=\""$1""$2"\" width=600><BR>"}' >> web.html

echo "</BODY></HTML>" >> web.html
