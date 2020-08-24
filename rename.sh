#!/bin/bash

clear
filetypes=(".avi" ".mkv" ".mp4" ".ogm")
basedir=$(pwd)
script=`basename "$0"`

#regex
seasonregex='[S|s][0-9]+([0-9]+)'
epregex='[E|e][0-9]+([0-9]+)' #[E|e|x]
numberregex='[0-9]([0-9]+)'

for showfolder in *
do
  if [[ $showfolder != $script ]]; then
    cd "$showfolder"
    show=$(echo $(basename -a $(pwd)) | sed ':a;N;$!ba;s/\n/ /g')
    showdir=$(pwd)
    echo "Show: "$show
    for seasonfolder in *
    do
      season=$(echo $seasonfolder | grep -Po $seasonregex | grep -Po $numberregex)
      newname="$show - S"$season
      if [[ $seasonfolder != $newname ]]; then
        mv "$seasonfolder" "$newname"
      fi
      cd "$newname"
      printf "  Season: "$season"\n    EP:"
      for episode in *
      do
        if [[ -d $episode ]]; then
	  mv $episode/* .
        fi
      done

      for episode in *
      do
        extension="${episode##*.}"
        if [[ ("$extension" =~ ^(avi|mkv|mp4)$) ]]; then
          ep=$(echo $episode | grep -Po $epregex | grep -Po $numberregex)
          newname="$show"" - S"$season"E"$ep"."$extension
          if [[ $episode != $newname ]]; then
	    mv "$episode" "$newname"
          fi
          printf ", $ep"
        else
          rm -r "$episode"
        fi
      done
      printf "\n"
      cd "$showdir"
    done
    cd "$basedir"
  fi
done
