---
title: certbot installation instructions
description: certbot installation instructions. certonly
---

- `wget https://dl.eff.org/certbot-auto`
- `chmod +x certbot-auto`
- `./certbot-auto certonly --manual --preferred-challenges=dns -d *.domain.tld`
- [follow additional instructions]
- you can check certificates later on by issuing the following command:
- `./certbot-auto certificates`
- how to install [read more from certbot.eff.org](https://certbot.eff.org/docs/install.html)
- list of [certbot commands](https://certbot.eff.org/docs/using.html?highlight=webroot%20path#certbot-commands)
