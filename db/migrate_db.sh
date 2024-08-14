# migrate_db.sh
../config/db_config.sh
../config/migration_config.sh
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DEST_DB_NAME < schema.sql
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $SRC_DB_NAME | mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DEST_DB_NAME
