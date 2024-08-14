# init_db.sh
../config/db_config.sh
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < schema.sql
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < procedures.sql
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < data.sql
