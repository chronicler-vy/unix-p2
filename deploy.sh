#!/bin/bash

TOMCAT_HOME=/opt/tomcat

WAR_FILE=./my-webapp/target/my-webapp.war

deploy() {
    $TOMCAT_HOME/bin/shutdown.sh

    rm -rf $TOMCAT_HOME/webapps/my-webapp*
    
    cp $WAR_FILE $TOMCAT_HOME/webapps/

    $TOMCAT_HOME/bin/startup.sh
}

undeploy() {
    $TOMCAT_HOME/bin/shutdown.sh

    rm -rf $TOMCAT_HOME/webapps/my-webapp*
    
    $TOMCAT_HOME/bin/startup.sh

    tail -f $TOMCAT_HOME/logs/catalina.out
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 {deploy|undeploy}"
    exit 1
fi

case "$1" in
    deploy)
        deploy
        ;;
    undeploy)
        undeploy
        ;;
    *)
        echo "Usage: $0 {deploy|undeploy}"
        exit 1
        ;;
esac
