```
# business connection
C:\Users\johndoe>tracert 103.28.54.1

Tracing route to sgp-1.valve.net [103.28.54.1]
over a maximum of 30 hops:

  1     2 ms     2 ms     2 ms  192.168.88.1
  2     3 ms     2 ms     2 ms  192.168.254.254
  3    38 ms    35 ms    36 ms  10.91.2.198
  4    34 ms    34 ms    37 ms  10.205.252.174
  5    35 ms    42 ms    41 ms  180.190.228.1
  6     *       44 ms    47 ms  120.28.0.57
  7    87 ms    83 ms    86 ms  120.28.1.234
  8    88 ms    85 ms    85 ms  valve2.sgix.sg [103.16.102.119]
  9   109 ms   135 ms   124 ms  sgp-1.valve.net [103.28.54.1]

Trace complete.

C:\Users\johndoe>ping 103.10.124.1 -n 10

Pinging 103.10.124.1 with 32 bytes of data:
Reply from 103.10.124.1: bytes=32 time=239ms TTL=56
Reply from 103.10.124.1: bytes=32 time=133ms TTL=56
Reply from 103.10.124.1: bytes=32 time=143ms TTL=56
Reply from 103.10.124.1: bytes=32 time=172ms TTL=56
Reply from 103.10.124.1: bytes=32 time=173ms TTL=56
Reply from 103.10.124.1: bytes=32 time=307ms TTL=56
Reply from 103.10.124.1: bytes=32 time=94ms TTL=56
Reply from 103.10.124.1: bytes=32 time=90ms TTL=56
Reply from 103.10.124.1: bytes=32 time=101ms TTL=56
Reply from 103.10.124.1: bytes=32 time=94ms TTL=56

Ping statistics for 103.10.124.1:
    Packets: Sent = 10, Received = 10, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 90ms, Maximum = 307ms, Average = 154ms

C:\Users\johndoe>
```

```
# residential connection
C:\Users\konek>tracert 103.28.54.1

Tracing route to sgp-1.valve.net [103.28.54.1]
over a maximum of 30 hops:

  1    <1 ms    <1 ms    <1 ms  DESKTOP-VJP4I8N [192.168.0.1]
  2    <1 ms    <1 ms     1 ms  192.168.254.254
  3    33 ms    33 ms    33 ms  10.91.2.194
  4    35 ms    42 ms    43 ms  10.205.252.178
  5     *        *        *     Request timed out.
  6     *        *        *     Request timed out.
  7     *        *        *     Request timed out.
  8     *        *        *     Request timed out.
  9   106 ms   128 ms    98 ms  sgp-1.valve.net [103.28.54.1]

Trace complete.

C:\Users\konek>ping -n 10 103.10.124.1

Pinging 103.10.124.1 with 32 bytes of data:
Reply from 103.10.124.1: bytes=32 time=91ms TTL=57
Reply from 103.10.124.1: bytes=32 time=74ms TTL=57
Reply from 103.10.124.1: bytes=32 time=75ms TTL=57
Reply from 103.10.124.1: bytes=32 time=75ms TTL=57
Reply from 103.10.124.1: bytes=32 time=74ms TTL=57
Reply from 103.10.124.1: bytes=32 time=74ms TTL=57
Reply from 103.10.124.1: bytes=32 time=76ms TTL=57
Reply from 103.10.124.1: bytes=32 time=74ms TTL=57
Reply from 103.10.124.1: bytes=32 time=88ms TTL=57
Reply from 103.10.124.1: bytes=32 time=108ms TTL=57

Ping statistics for 103.10.124.1:
    Packets: Sent = 10, Received = 10, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 74ms, Maximum = 108ms, Average = 80ms

C:\Users\konek>    
```
