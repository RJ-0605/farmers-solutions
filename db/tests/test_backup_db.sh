# test_backup_db.sh
../config/backup_config.sh
if [ -f $BACKUP_DIR/farmers_solution_$(date +%F).sql ]; then
    echo "Backup successful."
else
    echo "Backup failed."
fi
