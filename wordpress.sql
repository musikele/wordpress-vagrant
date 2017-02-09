drop database if exists wordpress;
CREATE DATABASE wordpress;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
ON wordpress.*
TO "root"@"localhost"
IDENTIFIED BY "password";
FLUSH PRIVILEGES;
