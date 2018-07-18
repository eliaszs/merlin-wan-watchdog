# merlin-wan-watchdog

Merlin internet/wan connection watchdog. The script is hooking to the `wan-start`
sequence and sets up the cron job which pings Google's DNS server `8.8.8.8`.

The cron job is invoked every 5 minutes by default. Once the Internet connectivity is faulty
the script will try to test the connectivity for 10 attempts by default, if the connection hasn't
returned then the `SIGUSR2` signal is send to the `udhcpc` process first, and then
`SIGUSR1` in order to refresh/renew the DHCP.

# Requirements

* Persistent JFFS
* SSH access

# Parameters

* user ?= admin
* port ?= 2222
* host ?= 192.168.1.1
* opts ?= -i ./id_rsa

# Usage

```
make user=admin port=22 host=192.168.1.254 opts="-i ./merlin_rsa"
```
