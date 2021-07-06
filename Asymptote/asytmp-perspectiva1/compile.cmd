IFS='
'
set -f
for i in $(find . -name '*.asy'); do asy "$i"; done