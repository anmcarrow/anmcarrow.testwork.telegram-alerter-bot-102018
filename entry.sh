#!/bin/sh

TOKEN="${TOKEN:-254292490:AAFmMReKBmI5sIZmfs-buYYTVkR8LkctVjg}"
CHATID="${CHATID:-44699412}"
URL="${URL:-https://mcrrw.me/}"
PROVESTRING="${URL:-doctype html}"

echo "
token: "${TOKEN}"
chat_id: "${CHATID}"
url: "${URL}"
str_target: "${PROVESTRING}"
" > ./alerter.yml

"$@"

