# date 2026-09-03





port: 7890
socks-port: 7891
allow-lan: true
ipv6: true
mode: rule
log-level: error
tcp-concurrent: true
external-controller: 0.0.0.0:9090
lan-allowed-ips:
  - 0.0.0.0/0
  - ::/0
skip-auth-prefixes:
  - 0.0.0.0/0
  - ::/0





dns:
  cache-algorithm: arc
  enable: true
  ipv6: true
  use-hosts: true
  respect-rules: true
  proxy-server-nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
    - 223.5.5.5
    - 119.29.29.29
    - https://dns.google/dns-query
    - https://1.1.1.1/dns-query
  nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
    - https://dns.google/dns-query
    - https://1.1.1.1/dns-query
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
    - 8.8.8.8
    - 1.1.1.1
    
  fallback:
    - https://1.1.1.1/dns-query
    - https://dns.google/dns-query
    - tls://8.8.8.8:853
    - tls://1.1.1.1:853
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





proxy-providers:
  provider#own-Git:
    type: http
    url: https://raw.githubusercontent.com/iso9000out/my/main/test/own
    interval: 86449
    health-check:
      enable: true
      interval: 7200
      url: http://www.gstatic.com/generate_204
  provider#JiangJiang-Site:
    type: http
    url: https://s.imgki.com/wn3LHHA
    interval: 172400
    health-check:
      enable: true
      interval: 7205
      url: http://www.gstatic.com/generate_204
  provider#RiPao-Git:
    type: http
    url: https://v1.mk/gUX6fUH
    interval: 172407
    health-check:
      enable: true
      interval: 7210
      url: http://www.gstatic.com/generate_204
#  provider#Free18-Git暂时停用723个:
#    type: http
#    url: https://v1.mk/BqrDxLy
#    interval: 86414
#    health-check:
#      enable: true
#      interval: 7215
#      url: http://www.gstatic.com/generate_204
  provider#pgkj0402:
    type: http
    url: https://v1.mk/I2iGw2N
    interval: 172421
    health-check:
      enable: true
      interval: 7220
      url: http://www.gstatic.com/generate_204
  provider#Snakem982-Git:
    type: http
    url: https://v1.mk/qDNsMW4
    interval: 172428
    health-check:
      enable: true
      interval: 7225
      url: http://www.gstatic.com/generate_204
  provider#Xrayvip-Site:
    type: http
    url: https://v1.mk/w1YKCpb
    interval: 86428
    health-check:
      enable: true
      interval: 7230
      url: http://www.gstatic.com/generate_204
  provider#ssrsub-Git:
    type: http
    url: https://s.imgki.com/Z0rsYKI
    interval: 86433
    health-check:
      enable: true
      interval: 7235
      url: http://www.gstatic.com/generate_204
#  provider#Shahidbhutta-Git停止维护了:
#    type: http
#    url: https://suo.yt/gPljrlc
#    interval: 86435
#    health-check:
#      enable: true
#      interval: 7240
#      url: http://www.gstatic.com/generate_204
  provider#ZiyouFly-Site:
    type: http
    url: https://s.imgki.com/fwCuV8Q
    interval: 86442
    health-check:
      enable: true
      interval: 7245
      url: http://www.gstatic.com/generate_204
  provider#YouZiLite-Site:
    exclude-filter: 关键词|关键的词
    type: http
    url: https://s.imgki.com/yVKqMg3
    interval: 43249
    health-check:
      enable: true
      interval: 7250
      url: http://www.gstatic.com/generate_204
  provider#shaoyouvip-Git:
    type: http
    url: https://s.imgki.com/BrVUSLb
    interval: 172456
    health-check:
      enable: true
      interval: 7255
      url: http://www.gstatic.com/generate_204
  provider#ChenGaoPan-Git:
    type: http
    url: https://s.subcsub.com/mtaeHb6
    interval: 172463
    health-check:
      enable: true
      interval: 7260
      url: http://www.gstatic.com/generate_204
  provider#ikuu-Site:
    type: http
    url: https://s.imgki.com/ZmLbhyK
    interval: 86470
    health-check:
      enable: true
      interval: 7265
      url: http://www.gstatic.com/generate_204
  provider#Meng-Littlebais-Git:
    type: http
    url: https://s.subcsub.com/c3pJjc5
    interval: 172477
    health-check:
      enable: true
      interval: 7270
      url: http://www.gstatic.com/generate_204
  provider#YuYan-BJD:
    type: http
    url: https://v1.mk/nGckgm4
    interval: 172484
    health-check:
      enable: true
      interval: 7275
      url: http://www.gstatic.com/generate_204
  provider#ZhouRunFa-Git:
    type: http
    url: https://v1.mk/iOHCWFc
    interval: 172491
    health-check:
      enable: true
      interval: 7280
      url: http://www.gstatic.com/generate_204
  provider#FeiNiaoYun:
    type: http
    url: https://s.imgki.com/9BnK3s2
    interval: 86498
    health-check:
      enable: true
      interval: 7285
      url: http://www.gstatic.com/generate_204
  provider#ChuanZhuo-Git:
    type: http
    url: https://v1.mk/FI6ZQSS
    interval: 172505
    health-check:
      enable: true
      interval: 7290
      url: http://www.gstatic.com/generate_204
  provider#Anaer-Git:
    type: http
    url: https://suo.yt/lZaOlEh
    interval: 172505
    health-check:
      enable: true
      interval: 7295
      url: http://www.gstatic.com/generate_204
  provider#udptoos-Site:
    type: http
    url: https://s.imgki.com/ZhK7Ikm
    interval: 172512
    health-check:
      enable: true
      interval: 7300
      url: http://www.gstatic.com/generate_204
#  provider#Q3dlaXpoaQ-Git特别多:
#    type: http
#    url: https://suo.yt/UtgiGRS
#    interval: 86519
#    health-check:
#      enable: true
#      interval: 7305
#      url: http://www.gstatic.com/generate_204
  provider#go4sharing-Git:
    type: http
    url: https://s.imgki.com/ZUTyTJs
    interval: 172526
    health-check:
      enable: true
      interval: 7310
      url: http://www.gstatic.com/generate_204
#  provider#PawDroid-Git不好转CF:
#    type: http
#    url: https://v1.mk/rkUxua6
#    interval: 86533
#    health-check:
#      enable: true
#      interval: 7315
#      url: http://www.gstatic.com/generate_204
  provider#Zhangkaiitugithub-PassCRO-Git:
    type: http
    url: https://s.subcsub.com/sJtwgj8
    interval: 172540
    health-check:
      enable: true
      interval: 7320
      url: http://www.gstatic.com/generate_204
  provider#cnqq-Site:
    type: http
    url: https://s.imgki.com/FckE08j
    interval: 86540
    health-check:
      enable: true
      interval: 7325
      url: http://www.gstatic.com/generate_204
  provider#Barabama-cfmem-Git:
    type: http
    url: https://s.imgki.com/MMG3FsE
    interval: 172240
    health-check:
      enable: true
      interval: 7330
      url: http://www.gstatic.com/generate_204
#  provider#ECH-CF不好转CF:
#    type: http
#    url: https://v1.mk/nRpxfwk
#    interval: 86547
#    health-check:
#      enable: true
#      interval: 7335
#      url: http://www.gstatic.com/generate_204
  provider#PuddinCat-Git:
    type: http
    url: https://v1.mk/r0wuDub
    interval: 172554
    health-check:
      enable: true
      interval: 7340
      url: http://www.gstatic.com/generate_204
  provider#Misaka-blog-Git:
    type: http
    url: https://v1.mk/tuntD1k
    interval: 172561
    health-check:
      enable: true
      interval: 7345
      url: http://www.gstatic.com/generate_204
#  provider#Mahdibland-Git暂时停用201个英国不通的多:
#    type: http
#    url: https://v1.mk/qHDu29Z
#    interval: 86568
#    health-check:
#      enable: true
#      interval: 7350
#      url: http://www.gstatic.com/generate_204
  provider#Mfuu-Git:
    type: http
    url: https://s.imgki.com/tptsxwn
    interval: 86575
    health-check:
      enable: true
      interval: 7355
      url: http://www.gstatic.com/generate_204
#  provider#ts-sf-Git暂时停用85个:
#    type: http
#    url: https://v1.mk/enxRC1t
#    interval: 86582
#    health-check:
#      enable: true
#      interval: 7360
#      url: http://www.gstatic.com/generate_204
  provider#Peasoft-Git:
    type: http
    url: https://suo.yt/DBwxJDR
    interval: 172589
    health-check:
      enable: true
      interval: 7365
      url: http://www.gstatic.com/generate_204
  provider#itsyebekhe-Git:
    type: http
    url: https://v1.mk/cEV1C8m
    interval: 172596
    health-check:
      enable: true
      interval: 7370
      url: http://www.gstatic.com/generate_204
  provider#132X2-Site:
    type: http
    url: https://v1.mk/OIa61XP
    interval: 172603
    health-check:
      enable: true
      interval: 7375
      url: http://www.gstatic.com/generate_204
  provider#ZhuhaiUK-Git:
    type: http
    url: https://s.imgki.com/UlPRCmR
    interval: 172610
    health-check:
      enable: true
      interval: 7380
      url: http://www.gstatic.com/generate_204
  provider#Valvatacea-Git:
    type: http
    url: https://v1.mk/c5spm88
    interval: 172617
    health-check:
      enable: true
      interval: 7385
      url: http://www.gstatic.com/generate_204
  provider#ShuaiDaoYa-Git:
    type: http
    url: https://v1.mk/WYg2u6P
    interval: 172624
    health-check:
      enable: true
      interval: 7390
      url: http://www.gstatic.com/generate_204
  provider#o00o:
    type: http
    url: https://v1.mk/C9zAjfj
    interval: 172631
    health-check:
      enable: true
      interval: 7395
      url: http://www.gstatic.com/generate_204
  provider#Firefoxmmx2-Git:
    type: http
    url: https://s.subcsub.com/CrvXoUi
    interval: 172638
    health-check:
      enable: true
      interval: 7400
      url: http://www.gstatic.com/generate_204
  provider#Vanic24-8EB-Git:
    type: http
    url: https://s.imgki.com/3lZemyQ
    interval: 86645
    health-check:
      enable: true
      interval: 7405
      url: http://www.gstatic.com/generate_204
  provider#Leon406-a11-Git:
    type: http
    url: https://s.imgki.com/cU5vQmq
    interval: 86652
    health-check:
      enable: true
      interval: 7410
      url: http://www.gstatic.com/generate_204
  provider#Vanic24-9PB-Git:
    type: http
    url: https://s.imgki.com/tnjZ95Y
    interval: 86659
    health-check:
      enable: true
      interval: 7415
      url: http://www.gstatic.com/generate_204





proxy-groups:
  - name: 节点选择
    type: select
    proxies:
      - 自动选优
    include-all-providers: true
    exclude-filter: 重置|更新|下次|刷新|机场|剩余|到期|电报|过期|页|官网|交流|群组|账号|无法
  - name: 自动选优
    interval: 600
    timeout: 2000
    type: url-test
    tolerance: 800
    url: http://www.gstatic.com/generate_204
    lazy: true
    max-failed-times: 3
    include-all-providers: true
    exclude-filter: 🇭🇰|香港|HK|🇨🇳|中国|CN|China|TW|其他|重置|更新|下次|刷新|机场|剩余|到期|电报|过期|页|官网|交流|群组|账号|无法
  - name: 谷歌服务
    type: select
    proxies:
      - 节点选择
      - 自动选优
      - 全局直连
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
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list
    path: ./ruleset/LocalAreaNetwork.yaml
  SteamCN:
    type: http
    format: text
    interval: 86403
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/SteamCN.list
    path: ./ruleset/SteamCN.yaml
  GoogleCN:
    type: http
    format: text
    interval: 86406
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list
    path: ./ruleset/GoogleCN.yaml
  ChinaDomain:
    type: http
    format: text
    interval: 86409
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list
    path: ./ruleset/ChinaDomain.yaml
  ChinaCompanyIp:
    type: http
    format: text
    interval: 86412
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list
    path: ./ruleset/ChinaCompanyIp.yaml
  ProxyMedia:
    type: http
    format: text
    interval: 86415
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list
    path: ./ruleset/ProxyMedia.yaml
  ProxyGFWlist:
    type: http
    format: text
    interval: 86418
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyGFWlist.list
    path: ./ruleset/ProxyGFWlist.yaml
  Telegram:
    type: http
    format: text
    interval: 86421
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list
    path: ./ruleset/Telegram.yaml
  Apple:
    type: http
    format: text
    interval: 86424
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Apple.list
    path: ./ruleset/Apple.yaml
  Microsoft:
    type: http
    format: text
    interval: 86427
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Microsoft.list
    path: ./ruleset/Microsoft.yaml
  Applications:
    type: http
    format: yaml
    interval: 86430
    behavior: classical
    url: https://fastly.jsdelivr.net/gh/Loyalsoldier/clash-rules@release/applications.txt
    path: ./ruleset/applications.yaml
  BanAD:
    type: http
    format: text
    interval: 86433
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list
    path: ./ruleset/BanAD.yaml
  BanProgramAD:
    type: http
    format: text
    interval: 86436
    behavior: classical
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list
    path: ./ruleset/BanProgramAD.yaml
  Myrules:
    type: http
    format: text
    interval: 3603
    behavior: classical
    url: https://raw.githubusercontent.com/iso9000out/my/main/Myrules.list
    path: ./ruleset/Myrules.yaml
  Myrulesbai:
    type: http
    format: text
    interval: 3606
    behavior: classical
    url: https://raw.githubusercontent.com/iso9000out/my/main/Myrulesbai.list
    path: ./ruleset/Myrulesbai.yaml




#--------------------------------------------------#
#  ProxyLite:
#    type: http
#    format: text
#    interval: 86400
#    behavior: classical
#    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list
#    path: ./ruleset/ProxyLite.yaml
#--------------------------------------------------#
# https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/TikTok.list





rules:
  - RULE-SET,LocalAreaNetwork,全局直连
  - RULE-SET,SteamCN,全局直连
  - RULE-SET,GoogleCN,全局直连
  - RULE-SET,ChinaDomain,全局直连
  - RULE-SET,ChinaCompanyIp,全局直连
  - RULE-SET,Myrulesbai,全局直连
  - RULE-SET,ProxyMedia,节点选择
  - RULE-SET,ProxyGFWlist,节点选择
  #- RULE-SET,ProxyLite,节点选择
  - RULE-SET,Telegram,节点选择
  - RULE-SET,Myrules,节点选择
  - RULE-SET,Apple,苹果服务
  - RULE-SET,Microsoft,微软服务
  - RULE-SET,Applications,全局直连
  - RULE-SET,BanAD,广告过滤
  - RULE-SET,BanProgramAD,广告过滤
  - GEOIP,LAN,全局直连,no-resolve
  - GEOIP,CN,全局直连,no-resolve
  - MATCH,漏网之鱼
