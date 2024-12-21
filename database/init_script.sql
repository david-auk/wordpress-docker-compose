-- Create the wordpress Databases
CREATE DATABASE IF NOT EXISTS `${SAMMASKE_DB_NAME}`;

-- Create users for each DAO with dynamic passwords
CREATE USER '${SAMMASKE_DB_USER}'@'%' IDENTIFIED BY '${SAMMASKE_DB_PASSWORD}';

-- Grant permissions
GRANT ALL PRIVILEGES ON `${SAMMASKE_DB_NAME}`.* TO '${SAMMASKE_DB_USER}'@'%';

FLUSH PRIVILEGES;
