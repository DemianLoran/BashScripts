#!/bin/bash
#set -n #(bash -n) just checks for syntax
#set -x (bash -x) echoes all commands after running them
#set -v (bash -v) echoes all commands before running them
#set -u (bash -u) causes the shell to treat using unset variables as an error
#set -e (bash -e) causes the script to exit immediately upon any non-zero exit status

#There are two ways to include a script file inside another script:
#. file
#source file

#$0 is the command name
#$1 $2 ... are the command arguments
#$* represents them all
#$@ represents them all, preserving the grouping of quoted arguments
#$# gives the number of arguments.
#$? holds the exit status of the previous command.

#[[ $STRING == mystring ]] && echo mystring is "$STRING"
#is equivalent to:
#if [[ $STRING == mystring ]] ; then
#    echo mystring is "$STRING"
#fi

#Test	                Meaning
#-----------------------------------------------
#-e file	            file exists?
#-d file	            file is a directory?
#-f file	            file is a regular file?
#-s file	            file has non-zero size?
#-g file	            file has sgid set?
#-u file	            file has suid set?
#-r file	            file is readable?
#-w file	            file is writeable?
#-x file	            file is executable?
#string	string          not empty?
#string1 == string2	    strings same?
#string1 != string2	    strings differ?
#-n string	string      not null?
#-z string	string      null?​​

#echo "Do you want to destroy your entire file system?"
#read response
#case "$response" in
#"yes") echo "I hope you know what you are doing!" ;;
#"no" ) echo "You have some comon sense!" ;;
#"y" | "Y" | "YES" ) echo "I hope you know what you are doing!" ;
#echo 'I am going to type: " rm -rf /"';;
#"n" | "N" | "NO" ) echo "You have some comon sense!" ;;
#* ) echo "You have to give an answer!" ;;
#esac
#exit 0

#echo 'Estas corriendo ' $(ps | wc -l) 'procesos con el script - '  $(($(ps | wc -l) - 1)) ' - ' $(expr $(ps | wc -l) - 2) ' sin el script, calculado de dos formas '

#To bring a network connection up and get it an assigned address from a DHCP server:
#$ sudo ip link set eno1 up
#$ sudo dhclient eno1
#To bring a network connection up and assign a static address:
#$ sudo ip link set eno1 up
#$ sudo ip addr add 192.168.1.100 dev eno1

#Table: Process and Load Monitoring Utilities
#--------------------------------------------------------------------------------------------------------
#Utility	Purpose	                                                                Package             #
#--------------------------------------------------------------------------------------------------------
#top	    Process activity, dynamically updated	                                procps
#uptime	    How long the system is running and the average load	                    procps
#ps	        Detailed information about processes	                                procps
#pstree	    A tree of processes and their connections	                            psmisc (or pstree)
#mpstat	    Multiple processor usage	                                            sysstat
#iostat	    CPU utilization and I/O statistics	                                    sysstat
#sar	    Display and collect information about system activity	                sysstat
#numastat	Information about NUMA (Non-Uniform Memory Architecture)	            numactl
#strace	    Information about all system calls a process makes	                    strace

#Table: Memory Monitoring Utilities
#------------------------------------------------------------------------------------------------
#Utility	Purpose	                                                                Package     #
#------------------------------------------------------------------------------------------------
#free	    Brief summary of memory usage	                                        procps
#vmstat	    Detailed virtual memory statistics and block I/O, dynamically updated	procps
#pmap	    Process memory map	                                                    procps

#Table: I/O Monitoring Utilities
#------------------------------------------------------------------------------------------------------------
#Utility	Purpose	                                                                Package                 #
#------------------------------------------------------------------------------------------------------------
#iostat	    CPU utilization and I/O statistics	                                    sysstat
#sar	    Display and collect information about system activity	                sysstat
#vmstat	    Detailed virtual memory statistics and block I/O, dynamically updated	procps

#Table: Network Monitoring Utilities
#----------------------------------------------------------------------------
#Utility	Purpose	                                            Package     #
#----------------------------------------------------------------------------
#netstat	Detailed networking statistics	                    netstat
#iptraf	    Gather information on network interfaces	        iptraf
#tcpdump	Detailed analysis of network packets and traffic	tcpdump
#wireshark	Detailed network traffic analysis	                wireshark


