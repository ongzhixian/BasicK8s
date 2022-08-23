# Cron Jobs

kubectl create cronjob everymin --image=alpine:3.16 --schedule="* * * * *" --dry-run=client -o yaml > everymin.yaml


# CRON

# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                   7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * * <command to execute>

"* * * * *" -- means run every minute

Schedule takes a Cron format string, such as 0 * * * * or @hourly, as schedule time of its jobs to be created and executed.

The format also includes extended "Vixie cron" step values. As explained in the FreeBSD manual:

    Step values can be used in conjunction with ranges. 
    Following a range with /<number> specifies skips of the number's value through the range. 
    For example, 0-23/2 can be used in the hours field to specify command execution every other hour 
    (the alternative in the V7 standard is 0,2,4,6,8,10,12,14,16,18,20,22). 
    Steps are also permitted after an asterisk, so if you want to say "every two hours", just use */2.

Note: A question mark (?) in the schedule has the same meaning as an asterisk *, that is, it stands for any of available value for a given field.

Some common schedules
0 0 1 1 *   @yearly (or @annually) 	Run once a year at midnight of 1 January 	    
0 0 1 * *   @monthly 	Run once a month at midnight of the first day of the month 	
0 0 * * 0   @weekly 	Run once a week at midnight on Sunday morning 	
0 0 * * *   @daily (or @midnight) 	Run once a day at midnight 	
0 * * * *   @hourly 	Run once an hour at the beginning of the hour 	

Note: On some systems it is also possible to specify */n to run for every n-th interval of time. 
Also, specifying multiple specific time intervals can be done with commas (e.g., 1,2,3). 
The below would output "hello world" to the command line every 5th minute of every first, second and third hour (i.e., 01:00, 01:05, 01:10, up until 03:55). 
*/5 1,2,3 * * * echo hello world

