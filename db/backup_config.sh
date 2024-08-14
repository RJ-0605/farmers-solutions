# backup_db.sh
../config/db_config.sh
../config/backup_config.sh
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_DIR/farmers_solution_$(date +%F).sql
find $BACKUP_DIR -type f -mtime +$RETENTION_DAYS -delete
