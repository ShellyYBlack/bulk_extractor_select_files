#!/bin/bash

cd /Users/borndigital/born_digital/daev_XXXX_XXXX/reports/prelim/bulkextractor_logical
mkdir b_e concat
find /Users/borndigital/born_digital/daev_XXXX_XXXX/logical -type f ! \( -iname "*.mp4" -o -iname "*.mov" -o -iname "*.avi" -o -iname "*.wmv" -o -iname "*.webm" -o -iname "*.flv" -o -iname "*.mp3" -o -iname "*.wav" -o -iname "*.aac" \) -exec sh -c 'bulk_extractor -S ssn_mode=1 -F $HOME/born_digital/daev_XXXX_XXXX/reports/prelim/bulkextractor_logical/rlist.txt -x exif -x winpe -o b_e/"$(echo $0 | tr -d "/")" "$0"' {} \;
find b_e -type f -empty -delete
find b_e -type d \( -name "*carv*" -o  -name "zip" \) -print -exec rm -r {} \;
find b_e -type f -exec basename {} \; | sort -u -o reportnames.txt
while read -r name; do find b_e -type f -path "*/$name" -exec cat {} + > "concat/$name"; done < reportnames.txt