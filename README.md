# wordpress-vagrant
A vagrant image of a wordpress blog. 

> THIS IS NOT A PRODUCTION ENVIRONMENT. THIS IS NOT "SECURE". USE IT ONLY FOR DEVELOPMENT

## start 

```
vagrant up 
```

then, go to [http://localhost:8080/blog/wp-admin/install.php](http://localhost:8080/blog/wp-admin/install.php) to start the installation procedure

## sensitive informations 

database user is `root`, password is `password`. 

## What does it contain 

an ubuntu image with a mysql server and wordpress, all at the latest available version (as of Feb, 9, 2016). 