#!/bin/bash
# Tiktok : tiktok.com/@xbibzofficiall
# Telegram : t.me/XbibzOfficial
# ===============================================
# Tools Created By Xbibz Official
# Developer : Xbibz Official



xbibzenc="QUFnQlVldlY1NGFBK2x3bDJJbmhjOFVoUnc2RklqRUlpWXl4Q1VrTzN4aXJzREdRdlRZVkJTY09WOWUveXlHeldhWEl0T3NOWVI3V3dwWVJpMTBIMWpjdENqOTZ2VTgxemc5M3ZjZ3J2c0FUY3I0TjFVZTV0V0xSamtrN3BkRUF1OGhXVnpuN0tnRW1ZN21DWVhuYTFMV29DV2wzVzFoeWk4SlhqWk1haFBoYVhWVWhBb25PR2l5aFUwQW82RGV3YlBzWkNBT0sydkcxWnlZaW54WjV6N0psS1dMSmhYemIyajgvcXpXUk1TbnFHZnptOXZMRGZVTS"
xbibzbukansepuh="svZjNkZzZ2QmVReXFsUzdTWGN4RDErM3Y5TjRPNGdHZ1NnZUhzbWppUmYzb1U1T3ZSLzFqV3hhUHlrK0o4OGxFM3dndjBTUXdhMy9nSllwVUlJSm5Fb2h0bDVBVUpJRWJTT3N5eWRpYkkveTV0Vjg1Z0ErZkJ0dDk4NWQ3ZkgwZGFhQjRuZWdmZ3ZRME5nSkxiNnlabTlLZjNuTzBLWXpnNzRnYVYzN3NVKzZxS1JjUUZJWWR1ZnlMRFZDWjVsS0crQ0VFakNVSU1kL1hwQWQ2cEppTGVnS0RsUzFUMWlVUkhhVkkycTVtQVpaR3gwK0I0US9CN1Jo"
nyolongkontol="THc1NnlNMGNTWWtqb1BnZEkyb2htbEZJME1rOFFvTVJVeDEramNGQnI4WFFCTWNHb24rd0FlcVF2Y1NCdVJVb1A4WVpPanFKUHFTbjk2eVlFSHlEZVdTbnJTMXVFSmZZc3cva01POTJlZGZGK2RzYjJjZmVRYittSHZaajZmWHEvUXRkZkUya0tYTmtpaXd6cEduMXpGMVlUNnF1VDRqNFVVc0VORWlvak0rcElKZ3BnOFJFaFFHSU54QzVLSy9FRDVhU1NmaHpBUSs2ckNzL2dmTUpCb010NFd0c2twY0hCWlI3QUd6cmpQR3hvcEZ0MzJQZnNCVn"
tiktokxbibzofficial="hxV0JMTDB1SlRHeUJJTnVvSEF5WGZlZ3o0cEZlME51aERmalRHd0pCemIreDJERXd3TUJsUy9Vdk1LUEJ0bmdQKzBtUTJsNFpqMDhQdEp5TWJYeXd6Z0VvUEpHTFBXMm00czQzbjhIdWQzYTd0MjJNUkdUZnVOYU9WblJad3l0WjJtWHNscDVLSlQ2Ukswb0VQM1puNzMzYjNmelp3SXdIYitNZG9DQnprZGkvL1RWN21pbDh4YklJYlpVRldWNkdrVVZLVFZRREJYUy9QU3RBU2RsbVZ0V3p3L25xWDlEQk1hLzI3VVY3QUFBQUFBQUFBSXM0SAo="

# si memek mau recode
COMBO="$xbibzenc$xbibzbukansepuh$nyolongkontol$tiktokxbibzofficial"

# lain kali jangan decode ya om
reverse_str() {
    local str=$1
    local reversed=""
    for ((i=${#str}-1; i>=0; i--)); do
        reversed="${reversed}${str:$i:1}"
    done
    echo -n "$reversed"
}

# Xbibz Is Here
echo "Running Script Xbibz Official....." >&2
STExbibzenc=$(echo "$COMBO" | base64 -d)
STExbibzbukansepuh=$(reverse_str "$STExbibzenc")
STEnyolongkontol=$(echo "$STExbibzbukansepuh" | base64 -d | gzip -d 2>/dev/null || echo "echo 'Error: Dekripsi gagal!'")

# si puqi
eval "$STEnyolongkontol"
