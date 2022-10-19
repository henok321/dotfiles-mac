# sipgate setup

## Kerberos

Setup `/etc/krb5.conf`:

<https://wiki.netzquadrat.de/mediawiki/index.php/Kerberos_und_LDAP#.2Fetc.2Fkrb5.conf>

## SSH

### Enable kerberos

Set `GSSAPIAuthentication yes` in `/etc/ssh/ssh_conf` to enable kerberos auth.

Add following lines to `$HOME/.ssh/config`:

```bash
# sipgate.net
Host *
User {LDAP_USER}
GSSAPIAuthentication yes
```

### Cert authority

<https://wiki.netzquadrat.de/mediawiki/index.php/SSH_Certificate_Authority#beliebiger_Client>

## Root CA

Import Sipgate Root CA
Download: <https://ca.live.sipgate.net:8443/certs/>

```bash
wget --no-check-certificate https://ca.live.sipgate.net:8443/certs/current_root -P /tmp
wget --no-check-certificate https://ca.live.sipgate.net:8443/certs/current_intermediate -P /tmp
```
