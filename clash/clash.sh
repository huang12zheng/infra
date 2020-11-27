#!/bin/bash
set -e
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
clashdir=/home/ubuntu/clash
clashpath=$clashdir/clash

if [ ! -d $clashdir ]; then
    mkdir $clashdir
fi

f_getfile() {
    echo "getting clash"
    pname="clash-linux-amd64-v1.3.0"
    # gz=$pname.gz
    # url=https://github.com/Dreamacro/clash/releases/download/v1.3.0/${pname}.gz
    # wget $url
    
    cp $pname.gz $clashdir/clash.gz
    cd $clashdir
    gzip -d clash
    chmod +x clash
}

f_getconfig() {
    cd $clashdir
    mv config.yaml config.yaml.$(date +%s).bak
    wget -O config.yaml https://cylink.moe/link/MUokX7EIQF56YA2k?clash=1
}

# run(){
#     ./clash -d .
#     # export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
# }

if [ ! -f "$clashpath" ]; then #~/clash can't switch to /home/ubuntu
    echo "clash isn't find"
    f_getfile
    echo "get clash finish"
    f_getconfig
    echo "get config finish"
fi

[ ! -f /home/ubuntu/proxy.sh ] && cp $SHELL_FOLDER/proxy.sh ~

# f_getconfig
# cd $clashdir
# run
# echo "$clashpath -d $clashdir"

echo finish
# "$clashpath -d $clashdir"