> always remember: education is everywhere, opportunity is rare.

> heaven and earth will pass away, but my words will not pass away.

> walang forever sa mundo

> it's never too late. don't stop learning.

- https://bitcoin-only.com/
- https://tools.ietf.org/pdf/draft-hardjono-blockchain-interop-arch-01.pdf
- https://macadmins.software
- https://repl.it/ - collaborative ide
- https://github.com/bitcoin/bitcoin/pull/6346#issue-38710491
- list of dns seed https://github.com/bitcoin/bitcoin/commit/1e3473d384facaf59fa7e33934f24f1e3034bf7c
- https://tb.rg-adguard.net/public.php
- ZorinOS + Mixxx DJ
- https://quickhash-gui.org/
- https://btcpayserver.org/
- https://txstreet.com/beta
- now.sh
- socket.io
- wildcard DNS for everyone: http://xip.io/
- Making it more productive is a no-brainer: https://ngrok.com/
- good read: https://developers.google.com/web/updates/2017/06/play-request-was-interrupted
- https://dtype.org
- https://powervps.ru/
- https://developers.google.com/chart/infographics/docs/infographics_gall
- https://developers.google.com/edu/c++
- https://glitch.com/
- https://time.is
- https://unsplash.com/
- https://breaking-security.net/sources/c/
- https://unblocked.ltda/
- https://hastebin.com/
- https://virustotal.com
- https://virusscan.jotti.org
- https://liveproxy.github.io/ - LiveProxy is a local Proxyserver between Streamlink and an URL.
- https://ddownr.com/
- 5sim.net - temp phone#
- https://send.firefox.com
- https://pulpstone.pw/tools/
- http://www.grid.net.ru/nginx/resumable_uploads.en.html
- uses alexa rank: pofex.com
- Time Diff: https://www.zeitverschiebung.net/en/
- HTTP Alternative Services: https://tools.ietf.org/html/rfc7838
- Adaptive Streaming w/ Nginx: https://licson.net/post/setting-up-adaptive-streaming-with-nginx/
- Adsense Wire transfer FAQs: https://support.google.com/adsense/answer/6025222?hl=en
- Python Strings: https://developers.google.com/edu/python/strings
- ShareX: https://getsharex.com/
- Search using terminal: curl dict.org/d:google
- IPFS is the Distributed Web: https://ipfs.io/
- An open source R&D lab: https://paratii.video/
- Stream IPFS: https://github.com/milankragujevic/stream-ipfs
- IPFS Stream: https://github.com/download13/ipfstube
- HyperTube: https://github.com/Its-Alex/HyperTube
- IPFS Gateways: https://ipfs.github.io/public-gateway-checker/
- How DNS works: https://howdns.works/
- CLI bandwidth tt: https://iperf.fr/
- An open network for secure, decentralized communication: https://matrix.org/
- I love music: http://www.mp3mixx.com
- HTML5 audio/video tester: https://tools.woolyss.com/html5-audio-video-tester/
- Open hosts: https://dbree.org; https://giga.gs; https://dmca.gripe
- Bullet Proof ISP: Ecatel/Quasi Networks/FlokiNET
- Electric Conv: https://www.rapidtables.com/convert/electric/index.html
- Chromebook Recovery: https://dl.google.com/dl/edgedl/chromeos/recovery/recovery.conf
- https://www.psaserbilis.com.ph/Secure/AcknowPrintFriendly.aspx?TranNo=0123456789123
- http://www.jrsoftware.org/isdl.php - Inno Setup is a free installer for Windows programs by Jordan Russell and Martijn Laan.
- https://theoldphantom.net/
- https://warzone.pw/

```bash
# scp using non-standard port
shell$ scp -P 2022 /path/from/file user@remote.sh:/path/to/file
# or
shell$ scp -rP 2020 /path/from/dir user@remote.sh:/path/to/dir
```

```batch
#set dns
netsh interface ipv4 set dns name="Local Area Connection" static 8.8.8.8 primary
netsh interface ipv4 add dns name="Local Area Connection" 8.8.4.4
ipconfig /flushdns
pause
```

```
# proxylife
http://pubproxy.com/api/proxy
https://proxycheck.io/v2/1.1.1.1
http://v2.api.iphub.info/ip/8.8.8.8 -H "X-Key: 123"
```

```
# source https://www.keycdn.com/support/how-to-convert-mp4-to-hls
#!/usr/bin/ffmpeg
ffmpeg -i input.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls index.m3u8
```

```
#!/bin/bash
# remove specific file
$ /usr/bin/find /path/to/archive/ -type f -name '*.md' -mtime +30 -exec rm {} \;
# remove empty directories
$ /usr/bin/find . -type d -empty -delete
```

```
# cronjob logger
* * * * * /bin/bash /var/crawler >> crawler.log 2>&1
```

```
# mikrotik routeros
$ interface wireless disable <interface-name>
```
```
$ ffmpeg -i input.mp4 -crf 27 -movflags +faststart output.mp4
```

```
# easyfix. remove wat @ https://www.daniel-mitchell.com/blog/reset-windows-7-rearm-count/
c:\> slmgr -rearm
```

```
$ # upload video on ipfs; 200MB max
$ curl https://ipfstube.erindachtler.me/upload -F file=@"Michael Jackson - Thriller (Shortened Version)-4V90AmXnguw.mp4"
$ https://ipfs.io/ipfs/QmSHw1WfuFENdaR4yR3avhebSvHv9qLmG4bRC6ZXdbZ73M
$ # upload to bigger file size
$ curl https://api.globalupload.io/transport/add -F file=@"file.mp4"
```

```
# # https://www.tecmint.com/rbash-a-restricted-bash-shell-explained-with-practical-examples/
# # https://www.tutorialsandyou.com/linux/linux-useradd-command-1.html
# # -m option is to create the home directory if not yet created.
# useradd sshtunnel -m -d /home/sshtunnel -s /bin/rbash
# passwd sshtunnel
# cd /home/sshtunnel/
# echo PATH="" > .profile
# chmod 444 .bash_logout .bashrc .profile
# chmod 555 /home/sshtunnel/
```

```
root@crawler:/var/log# cat auth.log|grep Accepted
Oct  1 13:53:50 crawler sshd[29816]: Accepted password for root from 180.190.192.71 port 56107 ssh2
Oct  1 21:54:17 crawler sshd[2205]: Accepted password for root from 180.190.181.83 port 42482 ssh2
Oct  2 08:37:09 crawler sshd[9887]: Accepted password for root from 180.190.181.83 port 42968 ssh2
Oct  2 13:07:45 crawler sshd[12263]: Accepted password for root from 180.190.164.112 port 59037 ssh2
Oct  3 00:38:33 crawler sshd[21550]: Accepted password for root from 180.190.164.112 port 59305 ssh2
Oct  3 12:31:16 crawler sshd[28818]: Accepted password for root from 180.190.164.112 port 59647 ssh2
Oct  4 01:24:02 crawler sshd[8545]: Accepted password for root from 180.190.172.224 port 35400 ssh2
```

```
# php.ini
upload_max_filesize = 2G 
memory_limit = 1G 
post_max_size = 2G  
```

> `sudo` if not root
> SysV Init scripts directly:
```
/etc/init.d/php-fpm restart    # typical
/etc/init.d/php5-fpm restart   # debian-style
/etc/init.d/php7.0-fpm restart # debian-style PHP 7
```
> service wrapper script
```
service php-fpm restart    # typical
service php5-fpm restart   # debian-style
service php7.0-fpm restart # debian-style PHP 7
```
> Upstart (e.g. ubuntu):
```
restart php7.0-fpm         # typical (ubuntu is debian-based) PHP 7
restart php5-fpm           # typical (ubuntu is debian-based)
restart php-fpm            # uncommon
```
> systemd (newer servers):
```
systemctl restart php-fpm.service    # typical
systemctl restart php5-fpm.service   # uncommon
systemctl restart php7.0-fpm.service # uncommon PHP 7
```

---
https://stackoverflow.com/questions/53599387/how-to-base64-encode-a-raw-pdf-content-bytes-in-javascript
> If you are storing contents as `Blob`, use the `FileReader` object to convert it to data URI, then remove its prefix:
```javascript
var reader = new FileReader();
reader.onload = function () {
  var b64 = reader.result.replace(/^data:.+;base64,/, '');
  console.log(b64);
};
reader.readAsDataURL(your_blob);
```

> Another way, if you are storing it as `ArrayBuffer`:

```javascript
// Create a Uint8Array from ArrayBuffer
var codes = new Uint8Array(your_buffer);

// Get binary string from UTF-16 code units
var bin = String.fromCharCode.apply(null, codes);

// Convert binary to Base64
var b64 = btoa(bin);
console.log(b64);
```
