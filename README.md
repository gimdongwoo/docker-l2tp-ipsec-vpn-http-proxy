# HTTP Proxy through IPSEC L2TP VPN Client on Docker
Docker earley-stage image to run an IPsec VPN client, with IPsec/L2TP, based on : https://github.com/emmdim/docker-ipsec-vpn-client

## HOW TO
After cloning the repo modify `docker-compose.yml` file

Below environment variables need to be passed by `docker-compose.yml`:

* `VPN_IPSEC_PSK`, `VPN_USER`, `VPN_PASSWORD` provided from your VPN provider
* the provider's IP is passed as `VPN_PUBLIC_IP` 
* and the local host ip should be passed as well, named `VPN_LOCAL_IP`

Then container launch would look like:

``./dockerstart.sh``

The container terminate would look like:

``./dockerstop.sh``