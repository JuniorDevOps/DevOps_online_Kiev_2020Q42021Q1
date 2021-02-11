#!/bin/bash

# Path to data dir
sync_dir=${1}

# Path to backup dir
backup_dir=${2}

# Path to dir with logs and temp files
logs_dir=${3}


diff -r $sync_dir $backup_dir | cut -f3,4 -d' ' > $logs_dir/temp

printf "%20s\t%20s\t%20s\n"   "Type"         "Name"         "Time"


if [ ! -e ${logs_dir}/log.log ]; then
        #current crontab
        crontab -l > $logs_dir/cron
        #add new cron task
        echo " * * * * * /home/linux2/task3/backup.sh ${sync_dir} ${backup_dir} ${logs_dir}" >> $logs_dir/cron
        #set new cron file
        crontab $logs_dir/cron
        rm $logs_dir/cron
fi


cat $logs_dir/temp | while read line
do
        file_name="$(echo $line | cut -d ' ' -f 2)"
        folder_name="$(echo $line | cut -d : -f 1)"
 
        if [[ "$folder_name" == "$sync_dir" ]]; then
            cp ${folder_name}/${file_name} $backup_dir
            name=$(stat --format=%n ${folder_name}/${file_name} | rev | cut -d/ -f1 | rev)
            last_mod_time=$(date -r ${folder_name}/${file_name} "+%H:%M")
            printf "%20s\t%20s\t%20s\n" "File added" ${name} ${last_mod_time}
            printf "%20s\t%20s\t%20s\n" "File added" ${name} ${last_mod_time} | tee --append ${logs_dir}/log.log >/dev/null
        
        elif [[ "$folder_name" == "$backup_dir" ]]; then
            name=$(stat --format=%n ${folder_name}/${file_name} | rev | cut -d/ -f1 | rev)
            last_mod_time=$(date -r ${folder_name}/${file_name} "+%H:%M")
            printf "%20s\t%20s\t%20s\n" "File deleted" ${name} ${last_mod_time}
            printf "%20s\t%20s\t%20s\n" "File deleted" ${name} ${last_mod_time} | tee --append ${logs_dir}/log.log >/dev/null
        fi

done

if [ -e ${logs_dir}/log.log ]; then
        rm $backup_dir/* && cp $sync_dir/* $backup_dir
fi

rm $logs_dir/temp
