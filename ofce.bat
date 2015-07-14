 
 wmic csproduct get name
 wmic bios get serialnumber
 
 :systeminfo >systeme.txt ez

if  not exist %2 goto SUITE
echo PST : %1> %1.txt
wmic bios get serialnumber >>%1.txt
echo ----------------------- >> %1.txt
systeminfo >> %1.txt
GOTO fin

:SUITE
echo PST : %1> %1_%2.txt
echo ECR : %2 >> %1_%2.txt
wmic bios get serialnumber >>%1_%2.txt
echo ----------------------- >> %1_%2.txt

systeminfo >> %1_%2.txt

:fin
