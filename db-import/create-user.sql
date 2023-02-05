create user if not exists 'mangos'@'%' identified by 'mangos';
grant all on *.* to 'mangos'@'%';
flush privileges;

