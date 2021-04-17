# Welcome to The Easy Startup/Stop/Status Script!

This is a basic script that can run on startup to start various Linux apps.

There is some requirements on your part to add the $PATH of where the bin files are located to start a program, like below:
```
sh ./where/the/path/is/of/bin/file.sh start_app1
```

```
sh ./where/the/path/is/of/bin/file.sh stop_app1
```

```
ps -ef | grep name_of_app1 | awk '{ pint $2 }' | xargs kill-9 
```
