#!/bin/bash
#This script backs up the Oracle DB every night
#Changed a line, sue me

if tar -zcvf /backups/backup-classfiles-`date +%F`.tar.gz /root/classfiles/*
  then
  echo "Oracle backup completed on `date`" >>/var/log/oraclebackuplog 

  else
  echo "Oracle backup failed on `date`" >>/var/log/oraclebackuplog
  mail -s BACKUP FAILED jason.eckert@trios.com </var/log/oraclebackuplog
fi
