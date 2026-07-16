#!/bin/sh
cat /etc/passwd | sed -n '1~2p' | cut -d ':' -f 1 | rev | sort -r | tr '\n' ',' | sed 's/,$/./'
