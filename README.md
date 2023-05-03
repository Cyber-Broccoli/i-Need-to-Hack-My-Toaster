# I Need to Hack my Toaster :zap:

TryHackMe profile: https://tryhackme.com/p/CyberBroccoli

Root-Me profile: https://www.root-me.org/JazzInNovember


# Lazy-Broccoli :trophy:

### The F*ck: https://github.com/nvbn/thefuck

Typing too fast ? The Fuck corrects previous mispelled command in your terminal just by typing `fuck` after you got the command error. Much more fun than correct it yourself.

```shell
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

# Messy-Broccoli :point_left: 
### Keep: https://github.com/OrkoHunter/keep
Keep acts like a library command manager

```shell
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

# My Girl is Gonna Kill Me :broken_heart:
Girl listen to me: promise,no Kali during holidays. I'll deal with it. :smiling_imp:
### Pentest Box: https://pentestbox.org
Portable pentest box environnement: 
- Runs directly on host machine. 
- Contains nearly all Linux utilities
- No extra dependencies required.
- Tools manager since v2.0
- Can run from an USB stick.

