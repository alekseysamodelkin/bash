#! /bin/bash
#start backup
echo "[`date +%F--%H-%M`] Run the backup script" >> /home/samodelkin/logs/log.txt
nowtime=`date +%F--%H-%M`
echo $nowtime




#create file
base64 /dev/urandom | head -c 100000 > notempty.txt
#create file1
dd if=/dev/urandom of=notempty1.txt bs=2M count=3
#create files2-9
for i in {2..9}
do
	echo hello > "notempty${i}.txt"
done
#create file10
summa=0
myFunction()
{
	summa=$(($1+$2))
}

myFunction 40 30
echo "text from function" > "notempty10.txt"
echo "Num1 is `$1`, Num2 is `$2`" >> "notempty10.txt"
echo "summa = $summa" >> "notempty10.txt"
#move to backup
mv not* /home/samodelkin/backup
#tar folder
tar czf backup_$nowtime.gz backup

#move to server2
rsync -avz /home/samodelkin/backup*.gz root@10.128.0.35:/home/samodelkin/backup_from_server1/


echo "[`date +%F--%H-%M`] Backup was successful" >> /home/samodelkin/logs/log.txt
#remove old files
ssh root@10.128.0.35 'find /home/samodelkin/backup_from_server1 -mmin +5 -exec rm {} \;'




