# HTTP Proxy through IPSEC L2TP VPN Client on Docker
Docker image to run HTTP Proxy through IPsec VPN client, with IPsec/L2TP, based on : https://github.com/emmdim/docker-ipsec-vpn-client

## HOW TO
After cloning the repo modify `docker-compose.yml` file

Below environment variables need to be passed by `docker-compose.yml`:

* `VPN_IPSEC_PSK`, `VPN_USER`, `VPN_PASSWORD` provided from your VPN provider
* the vpn provider's Host or IP is passed as `VPN_PUBLIC_IP` 
* and your local host ip should be passed as well, named `VPN_LOCAL_IP`

Then container launch would look like:

``./dockerstart.sh``

The container terminate would look like:

``./dockerstop.sh``

## HTTP Proxy
Then you can use the http proxy in your web browser.

Example for puppeteer:

``puppeteer.launch({ args: ['--proxy-server=localhost:8040'] })``
