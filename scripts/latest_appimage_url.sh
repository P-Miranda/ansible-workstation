#!/usr/bin/env bash
# Get download link for latest AppImage in github release
# Usage: latest_appimage_url.sh organization/user repository

if [ $# -lt 2 ]
then
    echo "Usage: latest_appimage_url.sh [organization] [repository]"
    exit 1
fi

organization=$1
repository=$2

github_api="https://api.github.com/repos/$organization/$repository/releases/latest"

download_link=$(curl -s $github_api \
    | grep "browser_download_url" \
    | grep "AppImage\"\$" \
    | awk {'print $2'} \
    | sed 's/"//g')

echo $download_link
