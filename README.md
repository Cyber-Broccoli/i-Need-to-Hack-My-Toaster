# I need to hack my toaster
This repository is just here to keep notes of useful stuff for CTF or cybersec stuff.

## Useful terminal stuff

### The F*ck: https://github.com/nvbn/thefuck

Typing too fast ? The Fuck corrects previous mispelled command in your terminal just by typing `fuck` after you got the command error. Much more fun than correct it yourself.

```shell bash
┌─[kali@kali]─[~]
└──╼ $whomi
Command 'whomi' not found, did you mean:
  command 'whom' from deb mmh
  command 'whom' from deb nmh
  command 'whom' from deb mailutils-mh
  command 'whoami' from deb coreutils
Try: sudo apt install <deb name>
┌─[✗]─[kali@kali]─[~]
└──╼ $fuck
whoami [enter/↑/↓/ctrl+c]
kali
```

### Keep: https://github.com/OrkoHunter/keep
Keep acts like a library command manager

```shell bash
┌─[root@kali]─[/home/kali]
└──╼ #keep list | grep "wordpress"
| 3  | $ wpscan --url http://url-before-wp-login-page -U admin -P /usr/share/wordlists/rockyou.txt             | Wpscan Wordpress user and/or password bruteforce - Example              | wpscan_wordpress_bruteforce |
| 4  | $ wpscan --url http://url-before-wp-login-page -e u                                                     | Wpscan enumerate Wordpress users - Generic                              | wpscan_wordpress_enum_users |
```
Cool thing is you can even push your library to a Github gist as a backup.

### Pentest.WS: https://pentest.ws
PenTest.WS is a penetration testing web application for organizing hosts, services, vulnerabilities and credentials during a penetration test. A reporting module is available for documenting and delivering a full penetration test.

Free version is sufficient for CTF writeup and/or keep trace of gathered informations.
Also have some cool tools: 
- MSFvenom builder: https://pentest.ws/tools/venom-builder 
- Reverse shell generator with shell upgrades and fixes: https://pentest.ws/e/XxYpLM6d#tools/shells

