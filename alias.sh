#!/bin/sh
set -e
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

alias gc='git clone'
clashdir=/home/ubuntu/clash
[ -f "$clashdir/clash" ] && alias clash="$clashdir/clash -d $clashdir"

[ -f "/usr/local/bin/helmfile" ] && \
    alias h="helmfile" && \
    alias ha="ht && helmfile apply" && \
    alias hd="helmfile destroy" && \
    alias ht="helmfile template>template.yaml" && \
    alias hdebug="helmfile --debug template>template.yaml"