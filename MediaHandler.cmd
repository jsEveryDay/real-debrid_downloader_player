@setlocal enableextensions
@cd /d "C:\Program Files\Windows Media Player"
REM >>> Change line above to your player path just to be safe.
REM >>> Like "C:\Program Files\VideoLAN\VLC"

@echo off
set url=%1
set url=%url:~6,-1%
REM >>> This simply parses the url before sending it to WMP. This removes the "" and mh://

START wmplayer %url%
exit