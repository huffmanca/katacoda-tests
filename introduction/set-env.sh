export JAVA_HOME=$(jrunscript -e 'java.lang.System.out.println(java.lang.System.getProperty("java.home"));')
clear; echo; echo -e "\033[0;32mYour ip-address for this cluster is $(hostname -i), please record this so that the instructor can reboot your machine if needed.\033[0m";echo
echo -e "Attempting to pull docker image."
docker pull windup3/windup-cli-openshift
docker pull httpd

docker run -it -v /home/scrapbook/tutorial/src_example.zip:/opt/jboss/application:rw windup3/windup-cli-openshift windup/bin/windup --input /opt/jboss/application --target eap7

