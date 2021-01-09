set -e
set -x
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
f_alias(){
    # set +e
    touch ~/.bashrc
    findkey=`cat ~/.bashrc|grep alias.sh|grep source`
    # set -e
set +e # [ -z "$findkey" ]
[ -z "$findkey" ] && cat >> ~/.bashrc<<EOF

source $SHELL_FOLDER/alias.sh
EOF
set -e
}

f_alias
cd $SHELL_FOLDER/clash
sh ./clash.sh

cd $SHELL_FOLDER
bash $SHELL_FOLDER/helm.sh || echo "helm run finish"