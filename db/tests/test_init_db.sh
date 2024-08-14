# test_init_db.sh
../config/db_config.sh
if mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "SHOW TABLES;"; then
    echo "Database initialized successfully."
else
    echo "Database initialization failed."
fi
