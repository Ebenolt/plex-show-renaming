#!/bin/bash

clear
filetypes=(".avi" ".mkv" ".mp4" ".ogm")
basedir=$(pwd)
script=`basename "$0"`

#regex
seasonregex='[S|s][0-9]+([0-9]+)'
epregex='[E|e][0-9]+([0-9]+)' #[E|e|x]
numberregex='[0-9]([0-9]+)'

for seriefolder in *
do
  if [[ $seriefolder != $script ]]; then
    cd "$seriefolder"
    serie=$(echo $(basename -a $(pwd)) | sed ':a;N;$!ba;s/\n/ /g')
    seriedir=$(pwd)
    echo "Serie: "$serie
    for seasonfolder in *
    do
      season=$(echo $seasonfolder | grep -Po $seasonregex | grep -Po $numberregex)
      newname="$serie"" - S"$season
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
          newname="$serie"" - S"$season"E"$ep"."$extension
          if [[ $episode != $newname ]]; then
	    mv "$episode" "$newname"
          fi
          printf ", $ep"
        else
          rm -r "$episode"
        fi
      done
      printf "\n"
      cd "$seriedir"
    done
    cd "$basedir"
  fi
done
