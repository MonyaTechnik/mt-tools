@echo off
:: ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:: ================================================================================================================================================================================================
:: Monya Technik's Tools 3.0.2
:: monyat.wixsite.com/main
:: 
:: Инструмент системы от spiri-leo и Мони Техника!
:: 
:: 4 антивирусов думают, что это вирус. Это инструмент системы (полезный), который он очищяет систему, а также настройка!
::
:: Через VirusTotal, сказал антивирус Microsoft, что это не вирус.
::
:: Мы проверяли в виртуальной машине в ОС Windows 11 с Windows Defender, а Windows Defender сказал, что это вирус.
:: Он назывался: Win32/HostsHijacker, это и за отключении телеметрии.
::
:: 1. Новые функции: Вернуть старый пуск через Windows 11 (экспериментная фукнция) (спасибо MSReview!) (убрали команду)
:: Очистить кэш обновления Windows, Отключить гибернацию (спасибо SysAdminTips!)
:: Изменение нового IP, Сброс WinHttp (спасибо Izzy Laif!)
:: Изменение DNS-сервера (спасибо WinBuzzer!)
::
:: Баги:
::
:: Все исправлены. Никаких действий не ненужны.
::
:: Благодарство:
::
:: Microsoft, (https://support.microsoft.com)
:: StackOverFlow посты, (https://stackoverflow.com)
:: TechinPost, (https://www.youtube.com/c/TechinPostCo)
:: remontka.pro, (https://www.youtube.com/c/remontkaprovideo)
:: Remonter, (https://www.youtube.com/c/Remonter)
:: Mr. Whoer, (https://www.youtube.com/c/WhoernetRU)
:: MJ Tube, (https://www.youtube.com/c/BSocialShineBlogSpotCom)
:: MSReview, (https://www.youtube.com/c/MSReviewNET)
:: SysAdminTips, (тут сайт, но потом)
:: Kinsta, (https://kinsta.com)
:: Izzy Laif, (https://izzylaif.com)
:: WinBuzzer, (https://winbuzzer.com)
:: и вы!
::
:: Если ваш антивирус говорит, что это угроза? Отключите антивирус, и очищайте c программой инструмент от Мони Техника и spiri-leo!
:: Если ваш антивирус говорит, что это не угроза? То всё нормально!
::
:: Для исправления программ или новой идеи или новых кодов, сообщите в GitHub по ссылке: https://github.com/MonyaTechnik/mt-tools-issues/issues
::
:: ================================================================================================================================================================================================
:: ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:: Начало кода ======================
title Monya Technik's Tools 3.0.2
set maindir=%cd%
set systempdir=%windir%\Temp
set bsoddumpdir=%windir%\minidump
set windowsdefenderhistorydir=C:\ProgramData\Microsoft\Windows Defender\Scans\History
set curldir=%maindir%\curl\curl.exe
set softwaredstion=%SystemRoot%\SoftwareDistribution
:main
cls
echo.
echo   ----------------------------------------------------------------- Monya Technik's Tools -----------------------------------------------------------------
echo.
echo          1. Disable Task Manager                                                           7.  Disable telemetry
echo          2. Enable Task Manager                                                            
echo.                                                                                           
echo          3. Clean DNS cache                                                                8.  Clean system error dump (BSOD error dump)
echo          4. Clean prefetch                                                                 9.  Clean event logs
echo          5. Clean user temp                                                                10. Clean hosts file
echo          6. Clean system temp                                                              11. Reset WinSock
echo.                                                                                           12. Off hibernate
echo.                                                                                           
echo          13. Disable Windows Defender (only 10 and newer)                                  14. Enable Windows Defender (only 10 and newer)
echo.                                                                                           
echo          15. Force group policy update                                                     16. Scan system  
echo          17. Restoring the performance counter library value                               18. Resync performance counter    
echo          19. Check the Windows Image Component Store                                       20. Restore the Windows Image Component Store
echo          21. Scan the Windows Image Component Store                                        
echo.                                                                                           
echo          22. Check errors on a system disk                                                 23. Check errors on a other disks
echo          24. Enable UAC                                                                    25. Disable UAC
echo          26. Clean Windows Defender history and log (only 10 and newer)                             
echo.                                                                                           
echo          27. Enable Windows Firewall                                                       28. Disable Windows Firewall
echo.                                                                                           
echo          29. Shutdown your PC                                                              30. Restart your PC
echo.                                                                                           
echo          31. Delete Windows Updates                                                        32. Download drivers
echo.                                                                                           
echo          33. Clean router table                                                            34. Reset TCP/IP
echo.                                                                                           
echo          35. Reset TCP/IP (for Windows XP and Windows Vista and Windows 7)                 36. Install programs
echo.
echo          37. Analyze the Windows Image Component Store                                     38. Cleanup Windows Image Component Store
echo.
echo          39. Reset WinSock catalog                                                         40. Reset IPv4
echo          41. Reset IPv6                                                                    42. Clear Windows Update download cache
echo.
echo          43. Clear Windows Update journal                                                  44. Renew IP
echo          45. Reset WinHttp proxy                                                           46. Change DNS server
echo.
echo          47. Update DNS settings
echo.
echo.
set input1=
set /p input1=Select numbers:
if %input1%==1 goto disabletm
if %input1%==2 goto enabletm
if %input1%==3 goto cleandnscache
if %input1%==4 goto cleanprefetch
if %input1%==5 goto cleanusertemp
if %input1%==6 goto cleansystemtemp
if %input1%==7 goto offtelemetry
if %input1%==8 goto cleanbsoddump
if %input1%==9 goto cleaneventlogs
if %input1%==10 goto cleanhostsfile
if %input1%==11 goto resetwinsock
if %input1%==12 goto disablehbrte
if %input1%==13 goto offwindowsdefender
if %input1%==14 goto onwindowsdefender
if %input1%==15 goto forcegrouppolicyupdate
if %input1%==16 goto scansystem
if %input1%==17 goto restoreperformancecounter
if %input1%==18 goto resyncperformancecounter
if %input1%==19 goto recoverwindowsimagecomponentstores
if %input1%==20 goto restorewindowsimagecomponentstores
if %input1%==21 goto scanwindowsimagecomponentstores
if %input1%==22 goto checksysdisks
if %input1%==23 goto checkotherdisks
if %input1%==24 goto enableuac
if %input1%==25 goto disableuac
if %input1%==26 goto cleanwdhistoryandlog
if %input1%==27 goto disablewindowsfirewall
if %input1%==28 goto enablewindowsfirewall
if %input1%==29 goto shutdownpc
if %input1%==30 goto restartpc
if %input1%==31 goto removewinupdates
if %input1%==32 goto downloaddrvs
if %input1%==33 goto cleanroutertable
if %input1%==34 goto resettcpip
if %input1%==35 goto resettcpipforwinxp
if %input1%==36 goto installprogs
if %input1%==37 goto analyzewics
if %input1%==38 goto cleanupwics
if %input1%==39 goto resetwinsockctlog
if %input1%==40 goto resetipv4
if %input1%==41 goto resetipv6
if %input1%==42 goto clearwinupdtcache
if %input1%==43 goto clearwinupdtjournal
if %input1%==44 goto renewip
if %input1%==45 goto resetwinhttp
if %input1%==46 goto changedns
if %input1%==47 goto updatednssettings
:disabletm
echo.
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
goto main
:enabletm
echo.
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f >nul
goto main
:cleandnscache
echo.
ipconfig /flushdns >nul
goto main
:cleanprefetch
echo.
del /q /f /s %windir%\Prefetch\* >nul
rd %windir%\Prefetch\ReadyBoot
goto main
:cleanusertemp
echo.
del "%TEMP%\*.*" /f /s /q
for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"
goto main
:cleansystemtemp
echo.
del "%systempdir%\*.*" /f /s /q
for /D %%i in ("%systempdir%\*") do RD /S /Q "%%i"
goto main
:clearwinupdtcache
echo.
net stop wuauserv >nul
del "%softwaredstion%\Download\*.*" /f /s /q
for /D %%i in ("%softwaredstion%\Download\*") do RD /S /Q "%%i"
net start wuauserv >nul
goto main
:clearwinupdtcache
echo.
net stop wuauserv >nul
del %softwaredstion%\DataStore\Logs\edb.log
net start wuauserv >nul
goto main
:offtelemetry
echo 0.0.0.0 a.ads1.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 a.ads2.msads.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 a.ads2.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 a.rad.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ac3.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 activity.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 adnexus.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 adnxs.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ads.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ads1.msads.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ads1.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 aidps.atdmt.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 aka-cdn-ns.adtech.de >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 alpha.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 api.cortana.ai >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 asimov-win.settings.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 azwancan.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 b.ads1.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 b.ads2.msads.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 b.rad.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bingads.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bl3301-a.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bl3301-c.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bl3301-g.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2-ris-ap-prod-atm.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2-ris-prod-atm.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2b-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2b-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2b-cor003.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2b-cor004.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn2wns1.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010558.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010560.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010618.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010629.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010631.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010635.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010636.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020010650.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020011727.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020012850.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020020322.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020020749.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020022328.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020022335.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn3sch020022361.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101120814.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101120818.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101120911.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101120913.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121019.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121109.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121118.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121223.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121407.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121618.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121704.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121709.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121714.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101121908.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101122117.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101122310.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101122312.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101122421.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101123108.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101123110.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch101123202.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bn4sch102110124.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 browser.pipe.aria.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 bs.serving-sys.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 by3301-a.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 by3301-c.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 by3301-e.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 c.atdmt.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 c.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ca.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cache.datamart.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cdn.atdmt.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds10.stn.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1203.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1204.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1209.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1219.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1228.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1244.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1257.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1265.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1269.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1273.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1285.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1287.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1289.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1293.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1307.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1310.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1325.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds1327.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds177.dus.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20005.stn.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20404.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20411.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20415.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20416.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20417.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20424.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20425.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20431.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20435.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20440.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20443.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20445.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20450.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20452.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20457.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20461.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20469.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20475.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20482.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20485.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds20495.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21205.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21207.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21225.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21229.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21233.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21238.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21244.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21249.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21256.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21257.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21258.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21261.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21267.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21278.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21281.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21293.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21309.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21313.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds21321.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds299.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds308.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds30027.stn.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds310.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds38.ory.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds54.ory.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds405.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds406.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds407.fra.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds416.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds421.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds422.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds425.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds426.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds447.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds458.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds459.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds461.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds468.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds469.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds471.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds483.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds484.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds489.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds493.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds494.lcy.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds812.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds815.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds818.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds832.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds836.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds840.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds843.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds857.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds868.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cds869.lon.llnw.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ceuswatcab01.blob.core.windows.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ceuswatcab02.blob.core.windows.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch1-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch1-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch3301-c.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch3301-e.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch3301-g.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch3302-c.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ch3302-e.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 compatexchange1.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 corp.sts.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 corpext.msitadfs.glbdns2.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cs1.wpc.v0cdn.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 cy2.vortex.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 db3aqu.atdmt.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 db5.settings.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 db5.settings-win.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 db5.vortex.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 db5-eap.settings-win.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 df.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 diagnostics.support.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 eaus2watcab01.blob.core.windows.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 eaus2watcab02.blob.core.windows.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ec.atdmt.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 flex.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 g.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 geo.settings.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 geo.settings-win.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 geo.vortex.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 h1.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 h2.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2.settings.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020721.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020723.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020726.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020729.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020732.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020824.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020843.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020851.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020854.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020855.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020924.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020936.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020940.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020956.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020958.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130020961.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021017.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021029.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021035.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021137.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021142.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021153.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021217.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021246.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021249.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021260.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021264.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021322.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021323.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021329.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021334.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021360.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021432.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021433.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021435.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021437.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021440.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021450.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021518.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021523.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021526.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021527.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021544.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021554.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021618.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021634.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021638.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021646.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021652.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021654.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021657.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021723.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021726.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021727.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021730.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021731.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021754.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021829.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021830.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021833.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021840.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021842.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021851.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021852.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021927.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021928.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021929.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130021958.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130022035.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130022041.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130022049.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2sch130022135.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2wns1.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 hk2wns1b.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-am3p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-am3p-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-am3p-cor003.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-am3p-cor004.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-am3p-cor005.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-bl6p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-bl6p-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-bn3p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-bn3p-cor090.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-by3p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-by3p-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-ch1-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-ch1-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-db3p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-db3p-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-db3p-cor003.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-db3p-cor004.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-db3p-cor005.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-sn2-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-sn2-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-sn3p-cor001.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 i-sn3p-cor002.api.p001.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ieonlinews.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ieonlinews.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 insideruser.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 lb1.www.ms.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 live.rads.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 m.adnxs.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 mobile.pipe.aria.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 modern.watson.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 msedge.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 msntest.serving-sys.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 msnbot-207-46-194-33.search.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 msnbot-65-55-108-23.search.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 nexus.officeapps.live.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 nexusrules.officeapps.live.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 nw-umwatson.events.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 oca.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 onecollector.cloudapp.aria.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 par02p.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 pre.footprintpredict.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 preview.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 rad.live.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 rad.msn.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 redir.metaservices.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 reports.wes.df.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 schemas.microsoft.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 secure.adnxs.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 secure.flashtalking.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 services.wes.df.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 settings-sandbox.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 settings-win-ppe.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 settings.data.glbdns2.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 settingsfd-geo.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sg2p.wns.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sn3301-c.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sn3301-e.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sn3301-g.1drv.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 spynet2.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 spynetalt.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 spyneteurope.microsoft.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sqm.df.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sqm.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 sqm.telemetry.microsoft.com.nsatc.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ssw.live.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 survey.watson.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 tele.trafficmanager.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 telecommand.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 telemetry.appex.bing.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 telemetry.remoteapp.windowsazure.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 telemetry.urs.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 teredo.ipv6.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 test.activity.windows.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 umwatsonc.events.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 v10.vortex-win.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 v10-win.vortex.data.microsoft.com.akadns.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 v20.vortex-win.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 view.atdmt.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 vortex-sandbox.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 vortex.data.glbdns2.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 vortex.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 watson.live.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 watson.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 watson.ppe.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 watson.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 web.vortex.data.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 wes.df.telemetry.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 weus2watcab01.blob.core.windows.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 weus2watcab02.blob.core.windows.net >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 win10.ipv6.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 win1710.ipv6.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 win8.ipv6.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 ztd.dds.microsoft.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 telemetry.nvidia.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 events.gfe.nvidia.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 services.gfe.nvidia.com >> %windir%\System32\drivers\etc\hosts
echo 0.0.0.0 activation.gfe.nvidia.com >> %windir%\System32\drivers\etc\hosts
:: Off telemetry services (delete)
sc delete DiagTrack >nul
sc delete dmwappushservice >nul
:: Clean all keylogger krakazyabras! (if file is not found, you got error)
echo "" > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl >nul
:: Была ошибка: reg HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection\ /v AllowTelemetry /t REG_DWORD /d 0 /f >nul
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection\ /v AllowTelemetry /t REG_DWORD /d 0 /f >nul
:: Off telemetry tasks
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable >nul
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable >nul
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable >nul
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable >nul
goto main
:cleanbsoddump
echo.
cd %bsoddumpdir%
del *.dmp >nul
cd maindir
goto main
:cleaneventlogs
echo.
for /F “tokens=*” %1 in (‘wevtutil.exe el’) DO wevtutil.exe cl “%1” >nul
goto main
:cleanhostsfile
echo.
echo # Generated by Monya Technik's Tool > %windir%\System32\drivers\etc\hosts
echo # Copyright (c) 1993-2009 Microsoft Corp. >> %windir%\System32\drivers\etc\hosts
echo # >> %windir%\System32\drivers\etc\hosts
echo # This is a sample HOSTS file used by Microsoft TCP/IP for Windows. >> %windir%\System32\drivers\etc\hosts
echo # >> %windir%\System32\drivers\etc\hosts
echo # This file contains the mappings of IP addresses to host names. Each >> %windir%\System32\drivers\etc\hosts
echo # entry should be kept on an individual line. The IP address should >> %windir%\System32\drivers\etc\hosts
echo # be placed in the first column followed by the corresponding host name. >> %windir%\System32\drivers\etc\hosts
echo # The IP address and the host name should be separated by at least one >> %windir%\System32\drivers\etc\hosts
echo # space. >> %windir%\System32\drivers\etc\hosts
echo # >> %windir%\System32\drivers\etc\hosts
echo # Additionally, comments (such as these) may be inserted on individual >> %windir%\System32\drivers\etc\hosts
echo # lines or following the machine name denoted by a '#' symbol. >> %windir%\System32\drivers\etc\hosts
echo # >> %windir%\System32\drivers\etc\hosts
echo # For example: >> %windir%\System32\drivers\etc\hosts
echo # >> %windir%\System32\drivers\etc\hosts
echo #      102.54.94.97     rhino.acme.com          # source server >> %windir%\System32\drivers\etc\hosts
echo #       38.25.63.10     x.acme.com              # x client host >> %windir%\System32\drivers\etc\hosts
echo # >> %windir%\System32\drivers\etc\hosts
echo # localhost name resolution is handled within DNS itself. >> %windir%\System32\drivers\etc\hosts
echo #	127.0.0.1       localhost >> %windir%\System32\drivers\etc\hosts
echo #	::1             localhost >> %windir%\System32\drivers\etc\hosts
goto main
:resetwinsock
echo.
netsh winsock reset >nul
goto main
:offwindowsdefender
echo.
powershell Set-MpPreference -DisableRealtimeMonitoring $true >nul
goto main
:onwindowsdefender
echo.
powershell Set-MpPreference -DisableRealtimeMonitoring $false >nul
goto main
:forcegrouppolicyupdate
echo.
gpupdate /force >nul
goto main
:scansystem
echo.
sfc /scannow 
echo.
echo Press any key to main.
pause >nul
goto main
:restoreperformancecounter
echo.
lodctr /R >nul
goto main
:resyncperformancecounter
echo.
winmgmt.exe /RESYNCPERF >nul
goto main
:recoverwindowsimagecomponentstores
echo.
dism /Online /Cleanup-Image /CheckHealth
echo.
echo Press any key to main.
pause >nul
goto main
:checksysdisk
echo.
chkdsk %systemdrive% /f
echo.
echo Press any key to main.
pause >nul
goto main
:checkotherdisks
echo.
set diskinput1=
set /p diskinput1=Select disk to fix: 
chkdsk %diskinput1% /f
echo.
echo Press any key to main.
pause >nul
goto main
:enableuac
echo.
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f >nul
goto main
:disableuac
echo.
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f >nul
goto main
:cleanwdhistoryandlog
echo.
rd %windowsdefenderhistorydir%\Service /s /q >nul
goto main
:disablewindowsfirewall
echo.
echo Select network to off:
echo.
echo (1) Disable firewall only for the current network type
echo (2) Disable firewall for domain network only
echo (3) Disable firewall for public network only
echo (4) Disable firewall for private network only
echo.
set input5=
set /p input5=Select numbers: 
if %input5%==1 goto disablefirewalloftcnt
if %input5%==2 goto disablefirewallfdno
if %input5%==3 goto disablefirewallfpno
if %input5%==4 goto disablefirewallfprivateno
:disablefirewalloftcnt
echo.
netsh advfirewall set currentprofile state off >nul
goto main
:disablefirewallfdno
echo.
netsh advfirewall set domainprofile state off >nul
goto main
:disablefirewallfpno
echo.
netsh advfirewall set publicprofile state off >nul
goto main
:disablefirewallfprivateno
echo.
netsh advfirewall set privateprofile state off >nul
goto main
:enablewindowsfirewall
echo.
echo Select network to enable:
echo.
echo (1) Enable firewall only for the current network type
echo (2) Enable firewall for domain network only
echo (3) Enable firewall for public network only
echo (4) Enable firewall for private network only
echo.
set input5=
set /p input5=Select numbers: 
if %input5%==1 goto enablefirewalloftcnt
if %input5%==2 goto enablefirewallfdno
if %input5%==3 goto enablefirewallfpno
if %input5%==4 goto enablefirewallfprivateno
:enablefirewalloftcnt
echo.
netsh advfirewall set currentprofile state on >nul
goto main
:enablefirewallfdno
echo.
netsh advfirewall set domainprofile state on >nul
goto main
:enablefirewallfpno
echo.
netsh advfirewall set publicprofile state on >nul
goto main
:enablefirewallfprivateno
echo.
netsh advfirewall set privateprofile state on >nul
goto main
:shutdownpc
echo.
shutdown /s /t 0
goto main
:restartpc
echo.
shutdown /r /t 0
goto main
:removewinupdates
echo.
echo Enter Windows Update number (example: 12345678)
echo.
set input6=
set /p input6=Enter Windows Update number: 
wusa.exe /uninstall /KB:%input6% /quiet /norestart
echo.
echo Windows Update successfully deleted. Please restart your PC.
echo Press any key to main.
pause >nul
goto main
:restorewindowsimagecomponentstores
echo.
dism /Online /Cleanup-Image /RestoreHealth
echo.
echo Press any key to main.
pause >nul
goto main
:scanwindowsimagecomponentstores
echo.
dism /Online /Cleanup-Image /ScanHealth
echo.
echo Press any key to main.
pause >nul
goto main
:exitprog
echo.
exit
:downloaddrvs
cls
echo.
echo  ------------------------------------------------------- Monya Technik's Tools -------------------------------------------------------
echo.
echo         1.  Download NVIDIA drivers on a NVIDIA website                        2.  Download NVIDIA beta drivers on a NVIDIA website
echo.                                                                                   
echo         3.  Download MSI drivers on a MSI website                              4.  Download Intel drivers on a Intel website
echo.                                                                                   
echo         5.  Download Realtek drivers on a Realtek website                      6.  Download ASUS drivers on a ASUS website
echo.                                                                                   
echo         7.  Download TP-Link drivers on a TP-Link website                      8.  Download Acer drivers on a Acer website
echo.
echo         9.  Download Packard Bell drivers on a Packard Bell website            10. Download HP drivers on a HP website
echo.
echo         11. Download Dell drivers on a Dell website                            12. Download Broadcom drivers on a Broadcom website
echo.
echo         13. Download Gigabyte drivers on a Gigabyte website                    14. Download ZyXEL drivers on a ZyXEL website
echo.
echo         15. Download Lenovo drivers on a Lenovo website                        16. Download AMD drivers on a AMD website
echo.
echo         17. Download Maibenben drivers on a Maibenben website (RUS)            18. To main
echo.
set input7=
set /p input7=Select numbers: 
if %input7%==1 goto opennvidiawebdriversdownload
if %input7%==2 goto opennvidiabetawebdriversdownload
if %input7%==3 goto openmsidriversonamsiwebsite
if %input7%==4 goto openinteldriverswebsite
if %input7%==5 goto openrealtekdownloaddriverswebsite
if %input7%==6 goto openasusdriversonaasuswebsite
if %input7%==7 goto opentplinkwebsitedriversdownload
if %input7%==8 goto openacerwebsitedriversdownload
if %input7%==9 goto openpackardbellwebsitedriversdownload
if %input7%==10 goto openhpwebsitedriversdownload
if %input7%==11 goto opendelldriversonadellwebsite
if %input7%==12 goto openbroadcomdriversonabroadcomwebsite
if %input7%==13 goto opengigabytedriversonagigabytewebsite
if %input7%==14 goto openzyxeldriversonazyxelwebsite
if %input7%==15 goto openlenovodriversonalenovowebsite
if %input7%==16 goto openamddriversonaamdwebsite
if %input7%==17 goto openmaibenbendriversonamaibenbenwebsite
if %input7%==18 goto tomain
:opennvidiawebdriversdownload
echo.
start https://www.nvidia.ru/Download/index.aspx
goto downloaddrvs
:opennvidiabetawebdriversdownload
echo.
start https://www.nvidia.ru/Download/Find.aspx
goto downloaddrvs
:openmsidriversonamsiwebsite
echo.
start https://ru.msi.com/support/download
goto downloaddrvs
:openinteldriverswebsite
echo.
start https://downloadcenter.intel.com
goto downloaddrvs
:openrealtekdownloaddriverswebsite
echo.
start https://www.realtek.com/en/downloads
goto downloaddrvs
:openasusdriversonaasuswebsite
echo.
start https://www.asus.com/ru/support/Download-Center
goto downloaddrvs
:opentplinkwebsitedriversdownload
echo.
start https://www.tp-link.com/ru/support/download
goto downloaddrvs
:openacerwebsitedriversdownload
echo.
start https://www.acer.com/ac/en/US/content/drivers
goto downloaddrvs
:openpackardbellwebsitedriversdownload
echo.
start https://www.packardbell.com/pb/en/GB/content/download
goto downloaddrvs
:openhpwebsitedriversdownload
echo.
start https://support.hp.com/us-en/drivers
goto downloaddrvs
:opendelldriversonadellwebsite
echo.
start https://www.dell.com/support/home/en-us?app=drivers
goto downloaddrvs
:openbroadcomdriversonabroadcomwebsite
echo.
start https://www.broadcom.com/support/download-search
goto downloaddrvs
:opengigabytedriversonagigabytewebsite
echo.
start https://www.gigabyte.com/Support
goto downloaddrvs
:openzyxeldriversonazyxelwebsite
echo.
start https://www.zyxel.com/us/en/support/download_landing.shtml
goto downloaddrvs
:openlenovodriversonalenovowebsite
echo.
start https://pcsupport.lenovo.com
goto downloaddrvs
:openamddriversonaamdwebsite
echo.
start https://www.amd.com/en/support
goto downloaddrvs
:openmaibenbendriversonamaibenbenwebsite
echo.
start http://ru_support.maibenben.cn/drive/id/23
goto downloaddrvs
:cleanroutertable
echo.
route -f >nul
goto main
:resettcpip
echo.
netsh int ip reset
echo.
echo Press any key to main.
pause >nul
goto main
:resettcpipforwinxp
echo.
netsh int ip reset resetlog.txt
echo.
echo Press any key to main.
pause >nul
goto main
:tomain
goto main
:installprogs
:: ==================================================================
:: Warning! Don't clean PC! Makes break the installer!
:: PC cleaners clean all temp!
:: But portable files is not breaks! (probably)
::
:: If your idea, please contact a GitHub:
:: https://github.com/MonyaTechnik/mt-tools/issues
:: ==================================================================
cls
echo ----------------------------------------------------------------------------------- Monya Technik's Tools -----------------------------------------------------------------------------------
echo.     Antiviruses:
echo.     
echo      1.  Download Avast Free Antivirus                            2. Download ESET NOD32 Internet Security                    3. Download ESET NOD32 Antivirus
echo.                                                                                                                              
echo      4.  Download 360 Total Security (Online)                     5. Download Kaspersky Anti-Virus (open on browser)          6. Download Kaspersky Internet Security (open on browser)
echo.
echo      7.  Download Kaspersky Total Security (open on browser)      8. Download Malwarebytes Premium Trial                      9. Open Malwarebytes AdwCleaner
echo.
echo      10. Go to main
echo.
set input8=
set /p input8=Select numbers: 
if %input8%==1 goto downloadavast
if %input8%==2 goto downloadesetis
if %input8%==3 goto downloadeset
if %input8%==4 goto download360tsonline
if %input8%==5 goto downloadkasperskyav
if %input8%==6 goto downloadkasperskyavis
if %input8%==7 goto downloadkasperskyavts
if %input8%==8 goto downloadmbpt
if %input8%==9 goto openmbac
if %input8%==10 goto main
:downloadavast
echo.
"%curldir%" --output %tmp%\avast_free_antivirus_online.exe --url https://dl.comss.ru/download/free/avast_free_antivirus_setup_online.exe >nul
start %tmp%\avast_free_antivirus_online.exe
goto installprogs
:downloadesetis
echo.
"%curldir%" --output %tmp%\eset_internet_security_live_installer.exe --url https://download.eset.com/com/eset/tools/installers/live_eis/latest/eset_internet_security_live_installer.exe >nul
start %tmp%\eset_internet_security_live_installer.exe
goto installprogs
:downloadeset
echo.
"%curldir%" --output %tmp%\eset_nod32_antivirus_live_installer.exe --url https://download.eset.com/com/eset/tools/installers/live_eav/latest/eset_nod32_antivirus_live_installer.exe >nul
start %tmp%\eset_internet_security_live_installer.exe
goto installprogs
:download360tsonline
echo.
"%curldir%" --output %tmp%\360TS_Setup_Mini.exe --url https://free.360totalsecurity.com/totalsecurity/360TS_Setup_Mini.exe >nul
start %tmp%\360TS_Setup_Mini.exe
goto installprogs
:downloadkasperskyav
echo.
start https://www.kaspersky.ru/downloads/thank-you/antivirus-free-trial
goto installprogs
:downloadkasperskyavis
echo.
start https://www.kaspersky.ru/downloads/thank-you/internet-security-free-trial#download
goto installprogs
:downloadkasperskyavts
echo.
start https://www.kaspersky.ru/downloads/thank-you/total-security-free-trial#download
goto installprogs
:downloadmbpt
echo.
"%curldir%" --output %tmp%\MBPTSetup.exe --url https://downloads.malwarebytes.com/file/mb-windows >nul
start %tmp%\MBPTSetup.exe
goto installprogs
:openmbac
echo.
:: Сделаем безопасный файл!
set protectedrandom1=%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
"%curldir%" --output %tmp%\%protectedrandom1%.exe --url https://downloads.malwarebytes.com/file/adwcleaner >nul
start %tmp%\%protectedrandom1%.exe
goto installprogs
:analyzewics
echo.
dism /online /cleanup-image /analyzecomponentstore
echo.
echo Press any key to main.
pause >nul
goto main
:cleanupwics
echo.
dism /online /cleanup-image /startcomponentcleanup
echo.
echo Press any key to main.
pause >nul
goto main
:resetwinsockctlog
echo.
netsh winsock reset catalog
echo.
echo Press any key to main.
pause >nul
goto main
:resetipv4
echo.
netsh int ipv4 reset reset.log
echo.
echo Press any key to main.
pause >nul
goto main
:resetipv6
echo.
netsh int ipv6 reset reset.log
echo.
echo Press any key to main.
pause >nul
goto main
:renewip
echo.
ipconfig /renew >nul
goto main
:disablehbrte
echo.
powercfg -h off
goto main
:resetwinhttp
echo.
netsh winhttp reset proxy
echo.
echo Press any key to main.
pause >nul
:changedns
cls
echo ----------------------------------------------------------------------------------- Monya Technik's Tools -----------------------------------------------------------------------------------
echo.     DNS servers
echo.     
echo      1. Google DNS    2. Cloudflare DNS    3. Yandex DNS    (new dns coming soon...) 4. Go to main
echo.                                                                                                                              
echo.
set input9=
set /p input9=Select numbers: 
if %input9%==1 goto changegoogledns
if %input9%==2 goto changecloudflaredns
if %input9%==3 goto changeyandexdns
if %input9%==4 goto main
:changegoogledns
echo.
echo You need select your current network adapter.
echo.
netsh interface show interface
echo.
set input10=
set /p input10=Enter a current network adapter name: 
echo.
echo Renaming...
netsh interface IP set dns name="%input10%" source ="static" address="8.8.8.8" >nul
netsh interface IP set dns name="%input10%" source ="static" address="8.8.4.4" index=2 >nul
echo Renamed! Press any key to main.
pause >nul
goto main
:changecloudflaredns
echo.
echo You need select your current network adapter.
echo.
netsh interface show interface
echo.
set input10=
set /p input10=Enter a current network adapter name: 
echo.
echo Renaming...
netsh interface IP set dns name="%input10%" source ="static" address="1.1.1.1" >nul
netsh interface IP set dns name="%input10%" source ="static" address="1.0.0.1" index=2 >nul
echo Renamed! Press any key to main.
pause >nul
goto main
:changeyandexdns
echo.
echo You need select your current network adapter.
echo.
netsh interface show interface
echo.
set input10=
set /p input10=Enter a current network adapter name: 
echo.
echo Renaming...
netsh interface IP set dns name="%input10%" source ="static" address="77.88.8.8" >nul
netsh interface IP set dns name="%input10%" source ="static" address="77.88.8.1" index=2 >nul
echo Renamed! Press any key to main.
pause >nul
goto main
:updatednssettings
ipconfig /registerdns >nul
goto main
:: Конец кода ======================
