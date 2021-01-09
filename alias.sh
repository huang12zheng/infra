#!/bin/sh
set -e
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

alias gc='git clone'
clashdir=/home/ubuntu/clash
[ -f "$clashdir/clash" ] && alias clash="sudo $clashdir/clash -d $clashdir"
# https://github.com/helm/helm/issues/9088
[ -f "/usr/local/bin/helmfile" ] && \
    alias h="helmfile" && \
    alias ha="ht && helmfile apply" && \
    alias hd="helmfile destroy" && \
    alias ht="helmfile template --validate>template.yaml" && \
    alias hdebug="helmfile --debug template>template.yaml"
set +e