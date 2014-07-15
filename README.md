Got Your Back
=========

###Got your backup? Version control for mysql. Future git integration.

1.) Set mysql_config_editor in terminal (MySQL version 5.6.6 or greater required)

`$ mysql_config_editor set --login-path=local --host=localhost --user=username --password`

It asks for your mysql password, enter it.


2.) Make script executable

`$ chmod 755 gotyourback.sh`


3.) Set the working directory's database in `mysql.config`

`db="dbname"` + `esc` + `:wq`


4.) Create directory `databases` in directory relative to shell script.


5.) Before every push to staging, run ...

`$ ./gotyourback.sh`
