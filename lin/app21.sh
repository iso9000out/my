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
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
    - 223.5.5.5
    - 119.29.29.29
    
  nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
    - https://dns.google/dns-query
    - tls://8.8.8.8:853

  nameserver-policy:
    "+.googleapis.com":
      - https://dns.google/dns-query
      - tls://8.8.8.8:853
    "+.google.com":
      - https://dns.google/dns-query
      - tls://8.8.8.8:853
    "geosite:cn,private":
      - https://doh.pub/dns-query
      - https://dns.alidns.com/dns-query
      - 223.5.5.5

  fallback:
    - https://dns.google/dns-query
    - tls://8.8.8.8:853
    - tls://dns.google:853

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
    #Apple
    - 'courier.push.apple.com'
    #mi
    - 'Mijia Cloud'


#2026-09-28
