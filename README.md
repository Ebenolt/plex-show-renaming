# Series Renamer (Plex, Kodi, Emby, Stremio, etc...)
Automatically rename series to clean &amp; readeable nomenclature

## How to use

Create a folder with the serie name for each serie you want to rename and then copy every season folder in this main folder

eg:

```bash
user@server:~/rename_folder/$ ls
Arrow  Friends  How I Met Your Mother  rename.sh
```

Then run :

```bash
user@server:~/rename_folder/$ ./rename.sh

Serie: Arrow
  Season: 01
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 02
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 03
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 04
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 05
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 06
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 07
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
  Season: 08
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10
Serie: Friends
  Season: 01
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 02
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 03
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25
  Season: 04
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 05
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 06
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25
  Season: 07
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 08
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 09
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 10
    EP:, 01, 02, 03
Serie: How I Met Your Mother
  Season: 01
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
  Season: 02
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22
  Season: 03
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
  Season: 04
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 05
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 06
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 07
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  Season: 08
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
  Season: 09
    EP:, 01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23

```
```bash
user@server:~/rename_folder/$ ls Arrow
Arrow - S01  Arrow - S02  Arrow - S03  Arrow - S04  Arrow - S05  Arrow - S06  Arrow - S07  Arrow - S08

user@server:~/rename_folder/$ ls Arrow/Arrow\ -\ S01/
Arrow - S01E01.avi  Arrow - S01E05.avi  Arrow - S01E09.avi  Arrow - S01E13.avi  Arrow - S01E17.avi  Arrow - S01E21.avi
Arrow - S01E02.avi  Arrow - S01E06.avi  Arrow - S01E10.avi  Arrow - S01E14.avi  Arrow - S01E18.avi  Arrow - S01E22.avi
Arrow - S01E03.avi  Arrow - S01E07.avi  Arrow - S01E11.avi  Arrow - S01E15.avi  Arrow - S01E19.avi  Arrow - S01E23.avi
Arrow - S01E04.avi  Arrow - S01E08.avi  Arrow - S01E12.avi  Arrow - S01E16.avi  Arrow - S01E20.avi
```

All your folders / files has been successfully renamed, enjoy !

## Troubleshooting


Add filetypes here
```bash
filetypes=(".avi" ".mkv" ".mp4" ".ogm") 
```


Change Season / EP detection here:
```bash
seasonregex='[S|s][0-9]+([0-9]+)'	#Add any letter / symbol with | separator in "[S|s]"
epregex='[E|e][0-9]+([0-9]+)'		#Add any letter / symbol with | separator in "[E|e]"
```
