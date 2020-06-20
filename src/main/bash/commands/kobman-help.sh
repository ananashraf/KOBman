#!/usr/bin/env bash

function __kob_help {

	__kobman_echo_yellow "KOBman - Help"
	__kobman_echo_blue "------------------------------------------------------------"
	__kobman_echo_white " $ kob <command> <qualifer> "   
	__kobman_echo_white ""
	__kobman_echo_white "Qualifiers   : Environments, Namespace, Version" # <qualifier> : environment, version, namespace
	__kobman_echo_white ""
	__kobman_echo_white "Environment" #environment
	__kobman_echo_blue "-------------------------------------------------------------"
	__kobman_echo_white ""
	__kobman_echo_white "von-network  : https://github.com/hyperledgerkochi/von-network"
	__kobman_echo_white "TheOrgBook   : https://github.com/hyperledgerkochi/TheOrgBook"
	__kobman_echo_white "greenlight   : https://github.com/hyperledgerkochi/greenlight"
	__kobman_echo_white "KOBman       : https://github.com/hyperlederkochi/KOBman"
	__kobman_echo_white ""
	__kobman_echo_white "(Please use the list command to know about the different"
	__kobman_echo_white " environments that can be installed by KOBman)"
	__kobman_echo_white ""
	__kobman_echo_white "Commands" #<command>
	__kobman_echo_blue "-------------------------------------------------------------"
	__kobman_echo_white "install      : $ kob install –env [env_name] -V [version]"          
	__kobman_echo_white "               The command is used to install the specified "
	__kobman_echo_white "               environment."
	__kobman_echo_white "               Eg: $ kob install -env von-network –V 0.0.2"
	__kobman_echo_white ""
	__kobman_echo_white "uninstall    : $ kob uninstall --environment {some-env-name}" # [env_name]
	__kobman_echo_white "               or   "
	__kobman_echo_white "               $ kob uninstall –env [env_name] -V [version]"
	__kobman_echo_white ""
	__kobman_echo_white "               The command is used to uninstall the specified "
	__kobman_echo_white "               environment."
	__kobman_echo_white "               Eg: $ kob uninstall –env KOBman"
	__kobman_echo_white ""
	__kobman_echo_white "status       : $ kob status"  
	__kobman_echo_white "               The command displays the installed environments."
	__kobman_echo_white ""
	__kobman_echo_white "list         : $ kob list"
	__kobman_echo_white "               The command lists the various environment that "
	__kobman_echo_white "               can be installed."
	__kobman_echo_white ""
	__kobman_echo_white "version      : Version of KOBman Utility "
	__kobman_echo_blue "               -------------------------"
	__kobman_echo_white "               $ kob --version or kob –V "
	__kobman_echo_white "               This command displays the version of KOBman"
	__kobman_echo_white "               installed on the host."
	__kobman_echo_white ""
	__kobman_echo_white "               Version of an Environment "
	__kobman_echo_blue "               -------------------------"
	__kobman_echo_white "               $ kob --version --environment {some-env-name}" # kob -V -env [env_name] 
	__kobman_echo_white "               The command displays the version of the specified "
	__kobman_echo_white "               environment."
	__kobman_echo_white "               Eg: $ kob --version --environment greenlight" # kob -V -env greenlight 
	__kobman_echo_white ""
	__kobman_echo_white "help         : $ kob help"
    __kobman_echo_white "               Displays the KOBman manual" #check for alignment
	
}
