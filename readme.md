
Task 3 

Stopped and removed Rails container from Task 2
Restarted Rails container WITHOUT port 8080

No -p 8080:3000 flag
Rails now only accessible within Docker network


Created nginx.conf file in project root

Configured upstream to point to railsapp1:3000
Set up proxy headers


Launched Nginx container

Connected to rail_network
Exposed port 80 to host
Mounted nginx.conf file into container
