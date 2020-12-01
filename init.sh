set -e
set -x
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
f_alias(){
    set +e
    findkey=`cat ~/.bashrc|grep alias.sh|grep source`
    set -e

[ -z "$findkey" ] && cat >> ~/.bashrc<<EOF

source $SHELL_FOLDER/alias.sh
EOF
}

f_alias

sh $SHELL_FOLDER/clash/clash.sh
bash $SHELL_FOLDER/helm.sh