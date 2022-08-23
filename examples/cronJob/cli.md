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


0 0 1 1 *   @yearly (or @annually) 	Run once a year at midnight of 1 January 	    
0 0 1 * *   @monthly 	Run once a month at midnight of the first day of the month 	
0 0 * * 0   @weekly 	Run once a week at midnight on Sunday morning 	
0 0 * * *   @daily (or @midnight) 	Run once a day at midnight 	
0 * * * *   @hourly 	Run once an hour at the beginning of the hour 	



Note: On some systems it is also possible to specify */n to run for every n-th interval of time. 
Also, specifying multiple specific time intervals can be done with commas (e.g., 1,2,3). 
The below would output "hello world" to the command line every 5th minute of every first, second and third hour (i.e., 01:00, 01:05, 01:10, up until 03:55). 
*/5 1,2,3 * * * echo hello world