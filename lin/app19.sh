http:
  pprof:
    port: 6060
    enabled: false
  doh:
    routes:
      - GET /dns-query
      - POST /dns-query
      - GET /dns-query/{ClientID}
      - POST /dns-query/{ClientID}
    insecure_enabled: false
  address: 0.0.0.0:3000
  session_ttl: 30d
users:
  - name: admin
    password: $2a$10$rzqN7qfx039c9FXT8g146.DLqTxZySo3kgq1iybOVghN.rni7/hMi
auth_attempts: 5
block_auth_min: 15
http_proxy: ""
language: zh-cn
theme: light
dns:
  bind_hosts:
    - 0.0.0.0
  port: 53
  anonymize_client_ip: false
  ratelimit: 0
  ratelimit_subnet_len_ipv4: 24
  ratelimit_subnet_len_ipv6: 56
  ratelimit_whitelist: []
  refuse_any: true
  upstream_dns:
    - 127.0.0.1:12353
    - tls://dot.pub
    - tls://dns.alidns.com
    - https://dns.alidns.com/dns-query
    - https://dns.pub/dns-query
  upstream_dns_file: ""
  bootstrap_dns:
    - 223.5.5.5
    - 119.29.29.29
    - 2400:3200::1
  fallback_dns: []
  upstream_mode: parallel
  fastest_timeout: 1s
  allowed_clients: []
  disallowed_clients: []
  blocked_hosts:
    - version.bind
    - id.server
    - hostname.bind
  trusted_proxies:
    - 127.0.0.0/8
    - ::1/128
  cache_enabled: true
  cache_size: 419430400
  cache_ttl_min: 0
  cache_ttl_max: 0
  cache_optimistic: true
  cache_optimistic_answer_ttl: 30s
  cache_optimistic_max_age: 12h
  bogus_nxdomain: []
  aaaa_disabled: false
  enable_dnssec: false
  edns_client_subnet:
    custom_ip: ""
    enabled: false
    use_custom: false
  max_goroutines: 300
  handle_ddr: true
  ipset: []
  ipset_file: ""
  bootstrap_prefer_ipv6: false
  upstream_timeout: 10s
  private_networks: []
  use_private_ptr_resolvers: false
  local_ptr_upstreams: []
  use_dns64: false
  dns64_prefixes: []
  serve_http3: false
  use_http3_upstreams: false
  serve_plain_dns: true
  hostsfile_enabled: true
  pending_requests:
    enabled: true
tls:
  enabled: false
  server_name: ""
  force_https: false
  port_https: 443
  port_dns_over_tls: 853
  port_dns_over_quic: 853
  port_dnscrypt: 0
  dnscrypt_config_file: ""
  certificate_chain: ""
  private_key: ""
  certificate_path: ""
  private_key_path: ""
  strict_sni_check: false
querylog:
  dir_path: ""
  ignored:
    - 8.8.8.8.*
    - _3000._*
    - _9090._*
    - my.router
    - '*.local'
    - '*.in-addr.arpa'
    - '*._dns-sd._udp.*'
    - hmhuawei.*
    - '*.bxq'
    - '*.q20'
    - bxq
  interval: 1d
  size_memory: 1000
  enabled: true
  ignored_enabled: true
  file_enabled: true
statistics:
  dir_path: ""
  ignored:
    - 8.8.8.8.*
    - _3000._*
    - _9090._*
    - my.router
    - '*.local'
    - '*.in-addr.arpa'
    - '*._dns-sd._udp.*'
    - hmhuawei.*
    - '*.bxq'
    - '*.q20'
    - bxq
  interval: 1d
  enabled: true
  ignored_enabled: true
filters:
  - enabled: true
    url: https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
    name: AdGuard Simplified Domain Names filter
    id: 1
  - enabled: true
    url: https://adaway.org/hosts.txt
    name: AdAway
    id: 2
  - enabled: true
    url: https://raw.githubusercontent.com/vokins/yhosts/master/hosts
    name: yhosts
    id: 1643233666
  - enabled: true
    url: https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts.txt
    name: VeleSila
    id: 1643233667
  - enabled: true
    url: https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_11_Mobile/filter.txt
    name: Mobile
    id: 1643233668
  - enabled: true
    url: https://raw.githubusercontent.com/banbendalao/ADgk/master/ADgk.txt
    name: ADgk
    id: 1643233669
  - enabled: true
    url: https://raw.githubusercontent.com/TG-Twilight/AWAvenue-Ads-Rule/main/Filters/AWAvenue-Ads-Rule-Adguard.txt
    name: QiuFeng
    id: 1643233670
  - enabled: true
    url: https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts
    name: ad-wars
    id: 1643233671
  - enabled: true
    url: https://raw.githubusercontent.com/loveqqzj/AdGuard/master/Mobile.txt
    name: AdGuard
    id: 1643233672
  - enabled: true
    url: https://raw.githubusercontent.com/iso9000out/my/main/adhost
    name: myhost
    id: 1643938268
  - enabled: true
    url: https://raw.githubusercontent.com/froggeric/DNS-blocklists/main/NoYouTubeAdsDNS
    name: NoYTB
    id: 1787129594
whitelist_filters: []
user_rules:
  - ""
dhcp:
  enabled: false
  interface_name: ""
  local_domain_name: lan
  dhcpv4:
    gateway_ip: ""
    subnet_mask: ""
    range_start: ""
    range_end: ""
    lease_duration: 86400
    icmp_timeout_msec: 1000
    options: []
  dhcpv6:
    range_start: ""
    lease_duration: 86400
    ra_slaac_only: false
    ra_allow_slaac: false
filtering:
  blocking_ipv4: ""
  blocking_ipv6: ""
  blocked_services:
    schedule:
      time_zone: UTC
    ids: []
  protection_disabled_until: null
  safe_search:
    enabled: false
    bing: false
    duckduckgo: false
    ecosia: false
    google: false
    pixabay: false
    yandex: false
    youtube: false
  blocking_mode: default
  parental_block_host: family-block.dns.adguard.com
  safebrowsing_block_host: standard-block.dns.adguard.com
  rewrites: []
  safe_fs_patterns:
    - /opt/AdGuardHome/data/userfilters/*
  max_http_size: 256MB
  safebrowsing_cache_size: 1048576
  safesearch_cache_size: 1048576
  parental_cache_size: 1048576
  cache_time: 30
  filters_update_interval: 24
  blocked_response_ttl: 10
  filtering_enabled: true
  rewrites_enabled: true
  parental_enabled: false
  safebrowsing_enabled: false
  protection_enabled: true
clients:
  runtime_sources:
    whois: true
    arp: true
    rdns: false
    dhcp: true
    hosts: false
  persistent: []
log:
  file: ""
  max_age: 3
  max_backups: 0
  max_size: 100
  compress: false
  enabled: true
  local_time: false
  verbose: false
os:
  group: ""
  user: ""
  rlimit_nofile: 0
schema_version: 34
