#!/bin/bash
#
# sgf2pdf.sh <sgf file>
#

type sgfinfo >/dev/null 2>&1 || { echo >&2 "I require sgfinfo but it's not installed. Aborting."; exit 1; }
type sgf2dg >/dev/null 2>&1 || { echo >&2 "I require sgf2dg but it's not installed. Aborting."; exit 1; }
usage()
{
  echo "Usage: $0 <sgf file>"
  exit 1
}

[[ $# -ne 1 ]] && usage
MAX=$(sgfinfo -m $1| cut -d' ' -f1)
for move in `seq 0 ${MAX}`;
  do
    comment=$(sgfx -m${move} -propC $1 )
    if [ ! -z "${comment}" ]
    then
      if [ -z "${BREAK}" ]
      then
        BREAK=${move}
      else
        BREAK="${BREAK},${move}"
      fi
    fi
  done
sgf2dg -movesPerDiagram 50 \
    -breakList ${BREAK} \
    -longComments \
    -coords \
    -convert PDF "-PDF-pageSize a4" "-PDF-stone_fontSize 9" "-PDF-stone_fontName Helvetica-Bold" "$1"
