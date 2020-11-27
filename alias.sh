#!/bin/sh
set -e
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)

alias gc=git clone
clashdir=/home/ubuntu/clash
[ -f "$clashdir/clash" ] && alias clash="$clashdir/clash -d $clashdir"

