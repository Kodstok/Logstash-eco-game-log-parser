#!/bin/bash
wget -O file.tmp  http://eco.lancer.emi.cool/api/v1/chat
cat file.tmp |jq -c ".[]"| grep Poggers | sed -e 's/<[^>]*>//g'| egrep -i "bought|sold"  >  no_tax_no_html.json
rm file.tmp
