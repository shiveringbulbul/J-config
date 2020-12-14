# +----------+
# | Method 1 |
# +----------+
# Local-OS 本地端產生憑證
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
# +----------+
# | Method 2 |
# +----------+
# CloudFlare 產生憑證
# SSL/TLS -> Origin Server -> Create Certificate -> RSA -> 1 year
# ./secrets/cloudflare.crt:/etc/ssl/cloudflare.crt:ro
'''
-----BEGIN CERTIFICATE-----
...YMyPCJPF8vdKuMn+EmjIna3xONZKfULsBJ74MjDNmp2ia932/lqlKo67...
-----END CERTIFICATE-----
'''
# ./secrets/cloudflare.key:/etc/ssl/cloudflare.key:ro
'''
-----BEGIN PRIVATE KEY-----
...vgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDDPN2zCpSS...
-----END PRIVATE KEY-----
'''


# +---------+
# | dhparam |
# +---------+
# ./secrets/dhparam.pem:/etc/ssl/dhparam.pem:ro
openssl dhparam 4096 -out secrets/dhparam.pem


# +---------+
# | configs |
# +---------+
# ./secrets/cloudflare.conf:/etc/nginx/conf.d/cloudflare.conf:ro
'''
set_real_ip_from 197.234.240.0/22;
set_real_ip_from 198.41.128.0/17;
...
set_real_ip_from 2400:cb00::/32;
set_real_ip_from 2606:4700::/32;
...
'''
# ./secrets/ssl.conf:/etc/nginx/conf.d/ssl.conf:ro
vim secrets/ssl.conf
'''
server { proxy_cookie_path / "/; HTTPOnly; Secure"; }
'''


# 限制權限
chmod 400 -R /etc/ssl/dhparam.pem
chmod 400 -R /etc/ssl/cloudflare.crt
chmod 400 -R /etc/ssl/cloudflare.key
