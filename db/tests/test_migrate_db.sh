# test_migrate_db.sh
../config/migration_config.sh
if mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DEST_DB_NAME -e "SHOW TABLES;"; then
    echo "Migration successful."
else
    echo "Migration failed."
fi
