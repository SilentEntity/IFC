This doc contains information for docker container running with mount volume,exposing port and passing environment variable
In this container image there is a csvserver running and we have to pass the csv inputfile at location /csvserver/inputdata

$docker pull infracloudio/csvserver:latest

$docker run -d infracloudio/csvserver:latest
if docker container fails to run then use
$docker ps -a
$docker logs <container-id-from-the-failed>
than mount the file generated from genscv.sh
$docker run -d -v /home/$USER/work/IFC/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
in order to get port from inside the container
$docker exec -it <container-id-from-the-running-container> "netstat -anpe"

$docker run -d -v /home/$USER/work/IFC/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest

In order to make gencsv.sh file
$nano gencsv.sh
$chmod 777 gencsv.sh
Making the inputFile readable to "users" group in linux
$chown -R :users inputFile

