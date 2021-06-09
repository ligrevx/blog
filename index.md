PGP: [0x2D3531528BD5369A](https://keys.openpgp.org/vks/v1/by-fingerprint/7A41E587C6DE888BB93289642D3531528BD5369A)

---
#### SD cards benchmarking

review here: [sd-card-performances](https://s87.me/sd-card-perf)

---
#### setting python env

example setting python3 on the ff:

`sudo ln -s /usr/bin/python3 /usr/bin/python`

now you can use `#!/usr/bin/env python`

---

#### uniqueness using PHP
I did the following benchmark where `$u` as `md5(time())` vs `md5(microtime())` vs `uniqid()` and my best choice was:

```php
php > $dups = [];for($i=0;$i<100;$i++){ $u = md5(microtime()); if(!in_array($u, $dups)){array_push($dups, $u);}printf("%s:%s".PHP_EOL,$u,strlen($u)); }echo(count($dups));
```

---

#### Simple way to find and kill process in Windows
```cmd
C:\> wmic process where "name like 'auto%'" get name,processid
Name     ProcessId
autobot.exe  7500
C:\> wmic process where processid=7500 delete
```

---
#### Bored copying/pasting
Time came that I was being bored copying/pasting data from a webpage and ended with a lazy solution using the chrome console.

`$x('//td[contains(@class,"result")]/text()').map(function(a){return a.textContent}).join(';')`


---
#### Lost connection to mysql server at 'reading authorization packet', system error: 0

I've check `netstat -tln|grep 3306` and found out it's listening on ipv6

`tcp6   0   0 :::3306   :::*    LISTEN`

Edit `/etc/my.conf` and add the following line on `[mysqld]` block

```
[mysqld]
bind-address = 0.0.0.0
```

and see the result
```
$ netstat -tln|grep 3306
tcp   0   0 :::3306   :::*    LISTEN
```

---
#### Installing PhantomJS
- Check on http://phantomjs.org better way to download the latest version.

- Download on your system

  `$ wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && tar xvf phantomjs-2.1.1-linux-x86_64.tar.bz2`
  
- Create symlink to binary directory

  `$ ln -s /path/to/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs`

- Check that everything works, do the version checking

  `$ phantomjs -v`
    
---
#### re.findall, re.match, & re.search
python: differences among re.findall, re.match, & re.search

```python
# find all matches from the given string
>>> re.findall('a', 'a ab abc')
['a', 'a', 'a']
# using character b
>>> re.findall('b', 'a ab abc')
['b', 'b']
```

```python
# find a matches from the beginning of the string
>>> re.match('a', 'a ab abc')
<_sre.SRE_Match object at 0x00000000028C46B0>
>>> re.match('a', 'a ab abc').group()
'a'
# using character b, and there is no match
>>> re.match('b', 'a ab abc')
```

```python
# find a single matches from the given string
>>> re.search('a', 'a ab abc')
<_sre.SRE_Match object at 0x00000000028C46B0>
>>> re.search('a', 'a ab abc').group()
'a'
# using character b
>>> re.search('b', 'a ab abc')
<_sre.SRE_Match object at 0x00000000028C46B0>
>>> re.search('b', 'a ab abc').group()
'b'
```

---
#### NGINX: 413 – Request Entity Too Large
Problem: client intended to send too large body: 11210385 bytes, client: 180.190.xxx.xxx, server: uploadserver, request: "POST /upload HTTP/1.1"...

Solution:
add `client_max_body_size = 2G;` to the location block (eg `/upload`)


---
#### POST Content-Length exceeds limit
Problem: PHP Warning: POST Content-Length of 12345678 bytes exceeds the limit of 8388608 bytes in ...

edit `php.ini`

`post_max_size = 8M` make it fit to your max file size eg. 1G

_post_max_size setting also affects file upload. 
To upload large files, this value must be larger than upload_max_filesize. 
Generally speaking, memory_limit should be larger than post_max_size._  http://php.net/post-max-size

`upload_max_filesize = 1G`

`memory_limit = 1G` to something your best fits

restart `php`

---
### PHP PDO
problem:
```
Stack trace:
#0 /path/to/file.php(linenumber): PDO->__construct('...')
...
```
solution:
```
$ sudo apt-get install php5-mysql
```
---
#### free, automated, opensource certificate authority
Let’s Encrypt is a free, automated, and open certificate authority (CA), run for the public’s benefit. It is a service provided by the Internet Security Research Group (ISRG).
- https://letsencrypt.org/isrg/
- https://certbot.eff.org/
- installation instruction, follow here https://s87.me/certbot


---
### google photos cheatsheet
> [google photos cheatsheet](https://s87.me/google_photos_cheatsheet)

---
#### from blogger > tumblr > posterous > wordpress > and here.
> old posts... restoring in progress...
