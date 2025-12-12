# rathena
mid rate renewal server for ragnarok online


#RESOTORE SQL TO DATABASE
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/main.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/logs.sql

# Item DB
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db2.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_re.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db2_re.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_equip.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_re_equip.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_etc.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_re_etc.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_usable.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/item_db_re_usable.sql

# Mob DB
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_db.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_db2.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_db_re.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_db2_re.sql

# Mob Skills
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_skill_db.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_skill_db2.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_skill_db_re.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/mob_skill_db2_re.sql

# Misc
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/roulette_default_data.sql
mysql -u root -p ragnarok < /home/rathena/rathena/sql-files/web.sql
