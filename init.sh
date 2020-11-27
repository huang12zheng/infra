set -e
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
f_alias(){
    findkey=`cat ~/.bashrc|grep alias.sh|grep source`

[ -z "$findkey" ] && cat >> ~/.bashrc<<EOF

source $SHELL_FOLDER/.alias
EOF
}

f_alias

sh $SHELL_FOLDER/clash/clash.sh
bash $SHELL_FOLDER/helm.sh