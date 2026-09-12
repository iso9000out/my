# date 2026-09-11





port: 7890
socks-port: 7891
allow-lan: true
ipv6: true
mode: rule
log-level: error
tcp-concurrent: true
unified-delay: true
keep-alive-idle: 600
keep-alive-interval: 30
disable-keep-alive: false
external-controller: 0.0.0.0:9090
lan-allowed-ips:
  - 0.0.0.0/0
  - ::/0
skip-auth-prefixes:
  - 0.0.0.0/0
  - ::/0




dns:
  enable: true
  ipv6: true
  use-hosts: true
  respect-rules: true
  cache-algorithm: arc
  
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
      - "+.google.com"
      - "+.facebook.com"
      - "+.youtube.com"
      - "+.twitter.com"
      - "+.github.com"




sniffer:
  enable: true
  force-dns-mapping: true
  parse-pure-ip: true
  override-destination: false
  sniff:
    HTTP:
      ports: [80, 8080-8880]
    TLS:
      ports: [443, 8443]
    QUIC:
      ports: [443, 8443]
  skip-domain:
    - "+.push.apple.com"
    - "Mijia Cloud"




proxy-providers:
  provider#own-Git:
    type: http
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/iso9000out/my/main/test/own
    interval: 86449
    health-check:
      enable: true
      interval: 3600
      url: http://www.gstatic.com/generate_204
  provider#JiangJiang-Site:
    type: http
    url: https://s.imgki.com/wn3LHHA
    interval: 172400
    health-check:
      enable: true
      interval: 3605
      url: http://www.gstatic.com/generate_204
#  provider#RiPao-Git十几个全不通:
#    type: http
#    url: https://v1.mk/gUX6fUH
#    interval: 172407
#    health-check:
#      enable: true
#      interval: 3610
#      url: http://www.gstatic.com/generate_204
#  provider#Free18-Git暂时停用723个:
#    type: http
#    url: https://v1.mk/BqrDxLy
#    interval: 86414
#    health-check:
#      enable: true
#      interval: 3615
#      url: http://www.gstatic.com/generate_204
#  provider#pgkj0402太多不通130个暂时隐藏:
#    type: http
#    url: https://v1.mk/I2iGw2N
#    interval: 172421
#    health-check:
#      enable: true
#      interval: 3620
#      url: http://www.gstatic.com/generate_204
  provider#Snakem982-Git:
    type: http
    url: https://s.imgki.com/Ooef6rP
    interval: 172428
    health-check:
      enable: true
      interval: 3625
      url: http://www.gstatic.com/generate_204
  provider#Xrayvip-Site:
    type: http
    url: https://v1.mk/w1YKCpb
    interval: 86428
    health-check:
      enable: true
      interval: 3630
      url: http://www.gstatic.com/generate_204
  provider#ssrsub-Git:
    type: http
    url: https://s.imgki.com/Z0rsYKI
    interval: 86433
    health-check:
      enable: true
      interval: 3635
      url: http://www.gstatic.com/generate_204
#  provider#Shahidbhutta-Git停止维护了:
#    type: http
#    url: https://suo.yt/gPljrlc
#    interval: 86435
#    health-check:
#      enable: true
#      interval: 3640
#      url: http://www.gstatic.com/generate_204
  provider#ZiyouFly-Site:
    type: http
    url: https://s.imgki.com/fwCuV8Q
    interval: 86442
    health-check:
      enable: true
      interval: 3645
      url: http://www.gstatic.com/generate_204
  provider#YouZiLite-Site:
    exclude-filter: 关键词|关键的词
    type: http
    url: https://s.imgki.com/yVKqMg3
    interval: 43249
    health-check:
      enable: true
      interval: 3650
      url: http://www.gstatic.com/generate_204
  provider#shaoyouvip-Git:
    type: http
    url: https://s.imgki.com/BrVUSLb
    interval: 172456
    health-check:
      enable: true
      interval: 3655
      url: http://www.gstatic.com/generate_204
#  provider#ChenGaoPan-Git爬别人的暂时隐藏:
#    type: http
#    url: https://s.subcsub.com/mtaeHb6
#    interval: 172463
#    health-check:
#      enable: true
#      interval: 3660
#      url: http://www.gstatic.com/generate_204
  provider#iKuuu-Site:
    type: http
    url: https://s.imgki.com/wfiZ8mg
    interval: 86470
    health-check:
      enable: true
      interval: 3665
      url: http://www.gstatic.com/generate_204
  provider#Meng-Littlebais-Git:
    type: http
    url: https://s.subcsub.com/c3pJjc5
    interval: 172477
    health-check:
      enable: true
      interval: 3670
      url: http://www.gstatic.com/generate_204
  provider#YuYan-BJD:
    type: http
    url: https://v1.mk/nGckgm4
    interval: 172484
    health-check:
      enable: true
      interval: 3675
      url: http://www.gstatic.com/generate_204
  provider#ZhouRunFa-Git:
    type: http
    url: https://v1.mk/iOHCWFc
    interval: 172491
    health-check:
      enable: true
      interval: 3680
      url: http://www.gstatic.com/generate_204
  provider#FeiNiaoYun:
    type: http
    url: https://s.imgki.com/9BnK3s2
    interval: 86498
    health-check:
      enable: true
      interval: 3685
      url: http://www.gstatic.com/generate_204
#  provider#ChuanZhuo-Git十几个都不通还是ripao:
#    type: http
#    url: https://v1.mk/FI6ZQSS
#    interval: 172505
#    health-check:
#      enable: true
#      interval: 3690
#      url: http://www.gstatic.com/generate_204
  provider#Anaer-Git:
    type: http
    url: https://s.imgki.com/4ycdzo8
    interval: 172505
    health-check:
      enable: true
      interval: 3695
      url: http://www.gstatic.com/generate_204
  provider#udptoos-Site:
    type: http
    url: https://s.imgki.com/ZhK7Ikm
    interval: 172512
    health-check:
      enable: true
      interval: 3700
      url: http://www.gstatic.com/generate_204
#  provider#Q3dlaXpoaQ-Git特别多:
#    type: http
#    url: https://suo.yt/UtgiGRS
#    interval: 86519
#    health-check:
#      enable: true
#      interval: 3705
#      url: http://www.gstatic.com/generate_204
  provider#go4sharing-Git:
    type: http
    url: https://s.imgki.com/ZUTyTJs
    interval: 172526
    health-check:
      enable: true
      interval: 3710
      url: http://www.gstatic.com/generate_204
#  provider#PawDroid-Git不好转CF:
#    type: http
#    url: https://v1.mk/rkUxua6
#    interval: 86533
#    health-check:
#      enable: true
#      interval: 3715
#      url: http://www.gstatic.com/generate_204
  provider#Zhangkaiitugithub-PassCRO-Git:
    type: http
    url: https://s.subcsub.com/sJtwgj8
    interval: 172540
    health-check:
      enable: true
      interval: 3720
      url: http://www.gstatic.com/generate_204
  provider#cnqq-Site:
    type: http
    url: https://s.imgki.com/FckE08j
    interval: 86540
    health-check:
      enable: true
      interval: 3725
      url: http://www.gstatic.com/generate_204
  provider#Barabama-cfmem-Git:
    type: http
    url: https://s.imgki.com/MMG3FsE
    interval: 172240
    health-check:
      enable: true
      interval: 3730
      url: http://www.gstatic.com/generate_204
#  provider#ECH-CF不好转CF:
#    type: http
#    url: https://v1.mk/nRpxfwk
#    interval: 86547
#    health-check:
#      enable: true
#      interval: 3735
#      url: http://www.gstatic.com/generate_204
  provider#PuddinCat-Git:
    type: http
    url: https://v1.mk/r0wuDub
    interval: 172554
    health-check:
      enable: true
      interval: 3740
      url: http://www.gstatic.com/generate_204
  provider#Misaka-blog-Git:
    type: http
    url: https://v1.mk/tuntD1k
    interval: 172561
    health-check:
      enable: true
      interval: 3745
      url: http://www.gstatic.com/generate_204
#  provider#Mahdibland-Git暂时停用201个英国不通的多:
#    type: http
#    url: https://v1.mk/qHDu29Z
#    interval: 86568
#    health-check:
#      enable: true
#      interval: 3750
#      url: http://www.gstatic.com/generate_204
  provider#Mfuu-Git:
    type: http
    url: https://s.imgki.com/tptsxwn
    interval: 86575
    health-check:
      enable: true
      interval: 3755
      url: http://www.gstatic.com/generate_204
#  provider#ts-sf-Git暂时停用85个:
#    type: http
#    url: https://v1.mk/enxRC1t
#    interval: 86582
#    health-check:
#      enable: true
#      interval: 3760
#      url: http://www.gstatic.com/generate_204
#  provider#Peasoft-Git十几个都不通还是ripao:
#    type: http
#    url: https://suo.yt/DBwxJDR
#    interval: 172589
#    health-check:
#      enable: true
#      interval: 3765
#      url: http://www.gstatic.com/generate_204
#  provider#itsyebekhe-Git共20个没通的:
#    type: http
#    url: https://v1.mk/cEV1C8m
#    interval: 172596
#    health-check:
#      enable: true
#      interval: 3770
#      url: http://www.gstatic.com/generate_204
  provider#132X2-Site:
    type: http
    url: https://s.imgki.com/7JT4UXw
    interval: 172603
    health-check:
      enable: true
      interval: 3775
      url: http://www.gstatic.com/generate_204
  provider#ZhuhaiUK-Git:
    type: http
    url: https://s.imgki.com/UlPRCmR
    interval: 172610
    health-check:
      enable: true
      interval: 3780
      url: http://www.gstatic.com/generate_204
  provider#Valvatacea-Git:
    type: http
    url: https://v1.mk/c5spm88
    interval: 172617
    health-check:
      enable: true
      interval: 3785
      url: http://www.gstatic.com/generate_204
  provider#ShuaiDaoYa-Git:
    type: http
    url: https://v1.mk/WYg2u6P
    interval: 172624
    health-check:
      enable: true
      interval: 3790
      url: http://www.gstatic.com/generate_204
  provider#o00o:
    type: http
    url: https://v1.mk/C9zAjfj
    interval: 172631
    health-check:
      enable: true
      interval: 3795
      url: http://www.gstatic.com/generate_204
#  provider#Firefoxmmx2-Git不通数量少暂时隐藏:
#    type: http
#    url: https://s.subcsub.com/CrvXoUi
#    interval: 172638
#    health-check:
#      enable: true
#      interval: 3800
#      url: http://www.gstatic.com/generate_204
#  provider#Vanic24-8EB-Git维护经常混入出错暂时隐藏:
#    type: http
#    url: https://s.imgki.com/3lZemyQ
#    interval: 86645
#    health-check:
#      enable: true
#      interval: 3805
#      url: http://www.gstatic.com/generate_204
#  provider#Leon406-a11-Git都不通100个暂时隐藏:
#    type: http
#    url: https://s.imgki.com/cU5vQmq
#    interval: 86652
#    health-check:
#      enable: true
#      interval: 3810
#      url: http://www.gstatic.com/generate_204
#  provider#Vanic24-9PB-Git假通400多个暂时隐藏:
#    type: http
#    url: https://s.imgki.com/tnjZ95Y
#    interval: 86659
#    health-check:
#      enable: true
#      interval: 3815
#      url: http://www.gstatic.com/generate_204
  provider#Giize-Site:
    type: http
    url: https://s.imgki.com/kA8sxSd
    interval: 86666
    health-check:
      enable: true
      interval: 3820
      url: http://www.gstatic.com/generate_204
  provider#HelloWorld-Git:
    type: http
    url: https://s.imgki.com/NEosjQD
    interval: 86673
    health-check:
      enable: true
      interval: 3825
      url: http://www.gstatic.com/generate_204




proxy-groups:
  - name: 节点选择
    type: select
    proxies:
      - 自动选优
    include-all-providers: true
    exclude-filter: 重置|更新|下次|刷新|机场|剩余|到期|电报|过期|页|官网|交流|群组|账号|无法
  - name: 自动选优
    type: url-test
    url: http://www.gstatic.com/generate_204
    interval: 737
    timeout: 2000
    tolerance: 800
    max-failed-times: 3
    lazy: true
    include-all-providers: true
    exclude-filter: 🇭🇰|香港|HK|hk|🇨🇳|中国|CN|cn|China|TW|tw|其他|重置|更新|下次|刷新|机场|剩余|到期|电报|过期|页|官网|交流|群组|账号|无法
  - name: 谷歌服务
    type: url-test
    url: http://www.gstatic.com/generate_204
    interval: 960
    timeout: 3000
    tolerance: 800
    max-failed-times: 3
    lazy: true
    include-all-providers: true
    filter: ^🇺🇸|US|🇸🇬|SG|🇹🇭|🇲🇾|🇵🇭|🇻🇳|🇮🇳|🇯🇵|🇰🇷|🇳🇱|🇬🇧|🇩🇪|🇫🇷|🇷🇴|🇨🇦|🇦🇺
  - name: 国外媒体
    type: select
    proxies:
      - 节点选择
      - 自动选优
      - 全局直连
  - name: 微软服务
    type: select
    proxies:
      - 全局直连
      - 节点选择
      - 自动选优
  - name: 苹果服务
    type: select
    proxies:
      - 全局直连
      - 节点选择
      - 自动选优
  - name: 广告过滤
    type: select
    proxies:
      - REJECT
      - DIRECT
  - name: 全局直连
    type: select
    proxies:
      - DIRECT
      - 节点选择
      - 自动选优
  - name: 全局拦截
    type: select
    proxies:
      - REJECT
      - DIRECT
  - name: 漏网之鱼
    type: select
    proxies:
      - 全局直连
      - 节点选择
      - 自动选优





rule-providers:
  LocalAreaNetwork:
    type: http
    format: text
    interval: 86400
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list
    path: ./ruleset/LocalAreaNetwork.yaml
  SteamCN:
    type: http
    format: text
    interval: 86403
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/SteamCN.list
    path: ./ruleset/SteamCN.yaml
  GoogleCN:
    type: http
    format: text
    interval: 86406
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list
    path: ./ruleset/GoogleCN.yaml
  ChinaDomain:
    type: http
    format: text
    interval: 86409
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list
    path: ./ruleset/ChinaDomain.yaml
  ChinaCompanyIp:
    type: http
    format: text
    interval: 86412
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list
    path: ./ruleset/ChinaCompanyIp.yaml
  ProxyMedia:
    type: http
    format: text
    interval: 86415
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list
    path: ./ruleset/ProxyMedia.yaml
  ProxyGFWlist:
    type: http
    format: text
    interval: 86418
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyGFWlist.list
    path: ./ruleset/ProxyGFWlist.yaml
  Telegram:
    type: http
    format: text
    interval: 86421
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list
    path: ./ruleset/Telegram.yaml
  Apple:
    type: http
    format: text
    interval: 86424
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Apple.list
    path: ./ruleset/Apple.yaml
  Microsoft:
    type: http
    format: text
    interval: 86427
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Microsoft.list
    path: ./ruleset/Microsoft.yaml
  Applications:
    type: http
    format: yaml
    interval: 86430
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/applications.txt
    path: ./ruleset/applications.yaml
  BanAD:
    type: http
    format: text
    interval: 86433
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list
    path: ./ruleset/BanAD.yaml
  BanProgramAD:
    type: http
    format: text
    interval: 86436
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list
    path: ./ruleset/BanProgramAD.yaml
  Myrules:
    type: http
    format: text
    interval: 1203
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/iso9000out/my/main/Myrules.list
    path: ./ruleset/Myrules.yaml
  Myrulesbai:
    type: http
    format: text
    interval: 1206
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/iso9000out/my/main/Myrulesbai.list
    path: ./ruleset/Myrulesbai.yaml
  Gemini:
    type: http
    format: text
    interval: 86439
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Gemini.list
    path: ./ruleset/Gemini.yaml
  Claude:
    type: http
    format: text
    interval: 86442
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Claude.list
    path: ./ruleset/Claude.yaml
  OpenAi:
    type: http
    format: text
    interval: 86445
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/OpenAi.list
    path: ./ruleset/OpenAi.yaml
  AI:
    type: http
    format: text
    interval: 86448
    behavior: classical
    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/AI.list
    path: ./ruleset/AI.yaml
    




#--------------------------------------------------#
#  ProxyLite:
#    type: http
#    format: text
#    interval: 86400
#    behavior: classical
#    url: https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list
#    path: ./ruleset/ProxyLite.yaml
#--------------------------------------------------#
# https://cdn.gh-proxy.org/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/TikTok.list





rules:
  - RULE-SET,LocalAreaNetwork,全局直连
  - RULE-SET,SteamCN,全局直连
  - RULE-SET,GoogleCN,全局直连
  - RULE-SET,Gemini,谷歌服务
  - RULE-SET,Claude,谷歌服务
  - RULE-SET,OpenAi,谷歌服务
  - RULE-SET,AI,谷歌服务
  - RULE-SET,ChinaDomain,全局直连
  - RULE-SET,ChinaCompanyIp,全局直连
  - RULE-SET,Myrulesbai,全局直连
  - RULE-SET,Myrules,节点选择
  - RULE-SET,ProxyMedia,节点选择
  - RULE-SET,ProxyGFWlist,节点选择
  #- RULE-SET,ProxyLite,节点选择
  - RULE-SET,Telegram,节点选择
  - RULE-SET,Apple,苹果服务
  - RULE-SET,Microsoft,微软服务
  - RULE-SET,Applications,全局直连
  - RULE-SET,BanAD,广告过滤
  - RULE-SET,BanProgramAD,广告过滤
  - GEOIP,LAN,全局直连,no-resolve
  - GEOIP,CN,全局直连,no-resolve
  - MATCH,漏网之鱼
