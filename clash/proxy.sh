isRun=`ps aux | grep /home/ubuntu/clash/clash | grep d`
[ ! -z "$isRun" ] && export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890