#!/bin/bash

# The function that helps to display a list of IP addresses and symbolic names of all hosts in the current subnet.
function ip_addresses() {
        printf "List of IP addresses and symbolic names of all hosts in the current subnet:\n"
        host_ip=$(hostname -I | cut -f1,2,3 -d.)
        printf "$(sudo nmap -sn ${host_ip}.0/24 | awk '/Nmap scan report for/{printf $5 "\t" $6;}/MAC Address:/{print " "substr($0, index($0,$4)) }')"
}

# The function that helps to display a list of open system TCP ports.
function tcp_ports() {
        printf "List of open system TCP ports:\n"
        printf "$(sudo netstat -tlpn | awk '/tcp/{print $1, $4}')\n"
}

# The function that helps to display a list of possible keys and their description.
function info() {
            echo "Key [--all] - displays a list of IP addresses and symbolic names of all hosts in the current subnet."
            echo "Key [--target] - displays a list of open system TCP ports."
}

if [[ $# -eq 0 ]]; then
        # If no arguments
        echo "You haven't entered parameters. Here is the list of possible:"
          info
else
          for key in $@; do

              if [[ $key == "--all" ]]; then
                      ip_addresses
              elif [[ $key == "--target" ]]; then
                      tcp_ports
              else
                      echo "The key ${key} does not exists. Here is the list of possible:"
                      info
              fi
          done
fi
