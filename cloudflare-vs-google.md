---
title: Cloudflare versus Google
description: Cloudflare versus Google. The DNS battle. Which one you choose?
---

Cloudflare versus Google. The DNS battle. Which one you choose?

```
Tracing route to one.one.one.one [1.1.1.1]
over a maximum of 30 hops:

  1     1 ms     1 ms     1 ms  192.168.88.1
  2     1 ms     1 ms     1 ms  192.168.254.254
  3    29 ms    30 ms    31 ms  10.91.2.194
  4    30 ms    31 ms    30 ms  10.205.252.178
  5    29 ms    30 ms    30 ms  180.190.228.5
  6     *       44 ms    45 ms  120.28.9.253
  7    45 ms    45 ms    43 ms  120.28.9.254
  8    44 ms    44 ms    43 ms  one.one.one.one [1.1.1.1]

Trace complete.
```

versus

```
Tracing route to dns.google [8.8.8.8]
over a maximum of 30 hops:

  1     1 ms     1 ms     1 ms  192.168.88.1
  2     2 ms     1 ms     2 ms  192.168.254.254
  3    30 ms    35 ms    30 ms  10.91.2.194
  4    29 ms    30 ms    32 ms  10.205.252.158
  5    32 ms    30 ms    31 ms  180.190.228.5
  6     *        *        *     Request timed out.
  7     *        *        *     Request timed out.
  8    58 ms    59 ms    60 ms  72.14.212.8
  9    59 ms    60 ms    60 ms  108.170.241.65
 10    63 ms    64 ms    64 ms  209.85.241.209
 11    59 ms    61 ms    60 ms  dns.google [8.8.8.8]

Trace complete.
```
