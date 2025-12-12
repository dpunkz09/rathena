#!/bin/bash

SQL_DIR="/home/rathena/rathena/sql-files"

echo "======================================="
echo "   rAthena SQL Automatic Installer"
echo "======================================="
echo ""
echo "Enter MySQL username (default: root): "
read USERNAME
USERNAME=${USERNAME:-root}

echo "Enter database name to import data into (default: ragnarok): "
read DBNAME
DBNAME=${DBNAME:-ragnarok}

echo ""
echo "? Checking MySQL installation..."
if ! command -v mysql >/dev/null 2>&1; then
    echo "? MySQL client not found. Install with:"
    echo "   sudo apt install mysql-client"
    exit 1
fi
echo "? MySQL is installed."

echo ""
echo "? Checking if database '$DBNAME' exists..."
DB_EXISTS=$(mysql -u "$USERNAME" -p -e "SHOW DATABASES LIKE '$DBNAME';" | grep "$DBNAME")

if [ -z "$DB_EXISTS" ]; then
    echo "? Database does not exist. Creating..."
    mysql -u "$USERNAME" -p -e "CREATE DATABASE $DBNAME;"
    echo "? Database '$DBNAME' created."
else
    echo "? Database exists."
fi

echo ""
echo "? Starting SQL import..."

FILES_IN_ORDER=(
    "main.sql"
    "logs.sql"

    # item DBs
    "item_db.sql"
    "item_db2.sql"
    "item_db_re.sql"
    "item_db2_re.sql"
    "item_db_equip.sql"
    "item_db_re_equip.sql"
    "item_db_etc.sql"
    "item_db_re_etc.sql"
    "item_db_usable.sql"
    "item_db_re_usable.sql"

    # mob DBs
    "mob_db.sql"
    "mob_db2.sql"
    "mob_db_re.sql"
    "mob_db2_re.sql"

    # mob skill DBs
    "mob_skill_db.sql"
    "mob_skill_db2.sql"
    "mob_skill_db_re.sql"
    "mob_skill_db2_re.sql"

    # misc
    "roulette_default_data.sql"
    "web.sql"
)

for FILE in "${FILES_IN_ORDER[@]}"; do
    FULL_PATH="$SQL_DIR/$FILE"
    if [ -f "$FULL_PATH" ]; then
        echo "? Importing: $FILE..."
        mysql -u "$USERNAME" -p "$DBNAME" < "$FULL_PATH"
        echo "? Imported: $FILE"
    else
        echo "? File not found: $FILE (skipped)"
    fi
done

echo ""
echo "======================================="
echo "? All SQL files imported successfully!"
echo "======================================="
