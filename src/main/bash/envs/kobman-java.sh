#!/bin/bash

function __kobman_install_java(){
     if [[ -d $KOBMAN_DIR ]]; then
        source $KOBMAN_DIR/src/kobman-utils.sh
        source $KOBMAN_DIR/bin/kobman-init.sh
    else
        echo "kob not found"
        echo "Please install KOBman and try again"
        echo "Exiting!!1"
        exit 1
    fi
    javac -version | grep -q "javac 11.0.8"
    if [[ "$?" != "0" ]]; then
        echo " Setting up Java with the latest version "
        sudo apt install default-jre
        sudo apt install default-jdk
        __kobman_echo_white "Latest Java Version (JRE) : "
        java -version 
        __kobman_echo_white "Latest Java Version (JDK) : "
        javac -version   
    else
        #__kobman_update_java
        __kobman_echo_white "Java already exists."
    fi
    __kobman_install_eclipse

}
function __kobman_install_eclipse(){
    __kobman_echo_no_colour "Installing Eclipse IDE"
    sudo apt  install eclipse-platform
    __kobman_echo_white "Launching Eclipse"
    eclipse
}

function __kobman_uninstall_java(){
     __kobman_uninstall_eclipse
    __kobman_echo_white "Uninstalling Java "
    sudo update-alternatives --display java
    sudo apt-get remove --auto-remove openjdk*
    sudo update-alternatives --config java
    __kobman_echo_white "Uninstalled Java"
}

function __kobman_uninstall_eclipse(){
    __kobman_echo_white " Uninstalling Eclipse IDE"
    sudo apt-get autoremove eclipse-platform
}

#function __kobman_update_java(){}
#function __kobman_update_eclipse(){}

#function __kobman_upgrade_java(){}
#function __kobman_upgrade_eclipse(){}

#function __kobman_validate_java(){}
#function __kobman_validate_eclipse(){}

#function __kobman_start_java(){}
#function __kobman_start_eclipse(){}

##function __kobman_stop_java(){}
##function __kobman_stop_eclipse(){}
__kobman_install_java