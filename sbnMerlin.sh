#!/bin/sh
readonly script_name="sbnMerlin"
readonly script_branch="bounce-eth-clients"
readonly script_repo="https://raw.githubusercontent.com/crazy-matt/$script_name/$script_branch"

/usr/sbin/curl -fsL --retry 3 "$script_repo/$script_name.sh" -o "/jffs/scripts/$script_name"
chmod 0755 "/jffs/scripts/$script_name"
echo "y" | /jffs/scripts/$script_name install
