echo off
echo building distribution

python setup.py py2exe > compile.log

echo copying files

xcopy  forms  .\dist\forms /s /d /y /f /i
xcopy  images .\dist\images /s /d /y /f /i
xcopy  locale .\dist\locale /s /d /y /f /i
xcopy  share  .\dist\share /s /d /y /f /i
xcopy  ui     .\dist\ui /s /d /y /f /i
xcopy  xp-specific-files\*.* dist /s /d /y /f /i

xcopy C:\Python27\Lib\site-packages\gtk-2.0\runtime\share\themes       dist\share\themes /s /d /y /f /i
xcopy C:\Python27\Lib\site-packages\gtk-2.0\runtime\lib                dist\lib /s /d /y /f /i
xcopy C:\Python27\lib\site-packages\gtk-2.0\runtime\bin\libxml2-2.dll  dist  /y


echo adding lzhuff_1.exe
xcopy .\libexec\lzhuf_1.exe .\dist\libexec\ /s /d /y /f /i

pause

