# date 2026-11-20

dns:
  enable: true
  ipv6: true
  use-hosts: true
  respect-rules: true
  cache-algorithm: arc
  listen: 0.0.0.0:8053

  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29

  proxy-server-nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query

  nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query

  hosts:
    'google.hk': google.com
    'google.com.hk': google.com
    'google.cn': google.com
    'www.google.cn': google.com
    '*.google.cn': google.com

  nameserver-policy:
    "+.google.com":
      - https://dns.google/dns-query
    "+.googleapis.com":
      - https://dns.google/dns-query
    "geosite:cn,private":
      - 223.5.5.5
      - https://dns.alidns.com/dns-query
      - https://doh.pub/dns-query

  fallback:
    - https://dns.google/dns-query

  fallback-filter:
    geoip: true
    geoip-code: CN
    geosite:
      - gfw

    ipcidr:
      - 240.0.0.0/4
      - 0.0.0.0/32
      - 127.0.0.1/32
    domain:
      - '+.google.com'
      - '+.googleapis.com'
      - '+.youtube.com'
      - '+.appspot.com'
      - '+.telegram.com'
      - '+.facebook.com'
      - '+.twitter.com'
      - '+.x.com'
      - '+.blogger.com'
      - '+.gmail.com'
      - '+.gvt1.com'
      - "+.github.com"

enhanced-mode: fake-ip
fake-ip-filter:
    - "+.*"
    - "*.lan"
    - "localhost.ptlogin2.qq.com"
    - "+.push.apple.com"
    - "+.mijia.com"

experimental:
  quic-go-disable-gso: true
  quic-go-disable-ecn: true

sniffer:
  enable: true
  override-destination: true
  sniff:
    http: { ports: [80, 8080] }
    tls: { ports: [443, 8443] }
  skip-domain:
    - 'courier.push.apple.com'
    - 'Mijia Cloud'

