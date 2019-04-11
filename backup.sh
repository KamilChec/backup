#!/bin/bash

#  backup.sh
#  
#
#  Created by Kamil Chęć on 20/03/2019.
#  

if [ "$1" = "help" ]
then 
	open ~/Desktop/README.txt
elif [ "$1" = "config" ]
then 
	open ~/Desktop/back1.txt
else 

	source ~/Desktop/back1.txt

	[ -d $BACKUP_DIR ] || {
	    mkdir -p $BACKUP_DIR
	}

	for FILE in "${BACKUP_FILES[@]}"
	do
	    rsync -va --exclude=$DO_NOT_COPY --max-size=$MAX_FILE_SIZE $FILE $BACKUP_DIR
	done
	cd $BACKUP_DIR
	tar -czvf "$(date '+%d-%m-%Y').tar.gz".tar.gz $BACKUP_DIR
fi
