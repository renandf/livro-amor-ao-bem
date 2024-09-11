#! /bin/ksh
typeset    content=""                   # input filename
typeset -i firstFile=1                  # flag for first file

while [ -n "$1" ] ; do
  content="$1"                          # get next file from input
  shift

  if (( firstFile )) ; then             # first file is copied up to "</body>"
      sed '/<\/body>/ {
            s/<\/body>.*//
            :loop
              n
              /.*/d
            b loop
            }' "$content"
      firstFile=0
  else
                                        # subsequent files, only the content
                                        # of "<body>...</body>"
    sed -n '/<body>/,/<\/body>/ {
              /<body>/ s/.*<body>//
              /<\/body>/ s/<\/body>.*//
              p
            }' "$content"
  fi
done

echo "</body>"
echo "</html>"

exit 0