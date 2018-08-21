###################################
## Copy Script für die Sicherung ##
###################################
set Logfilename=L:\Mails\Outlook-Archive\Copy.log
set QuelleName=C:\Users\z1337004\Documents\Outlook-Archive\*.* 
set ZielName=L:\Mails\Outlook-Archive\
set startinfo=### Copy Mail Start ###################################
set endinfo=### Copy Mail End ###################################

echo %startinfo% >> %Logfilename%

date /t >>%Logfilename%
time /t >>%Logfilename%

echo ###files before copy >> %Logfilename%
dir %ZielName% >>%Logfilename%

echo ###copying files in progress............  >> %Logfilename%
copy %QuelleName% %ZielName% /y >>%Logfilename%

echo ###files after copy >> %Logfilename%
dir %ZielName% >>%Logfilename%

echo %endinfo%
time /t >>%Logfilename%
echo %endinfo% >>%Logfilename%


%Logfilename%

####################################
######Ende######
####################################
