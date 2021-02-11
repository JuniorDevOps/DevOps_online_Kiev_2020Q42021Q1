#!/bin/bash

# From which ip were the most requests?
function ip_were_most_requests() {
         echo "Number of reguests and ip address"
         printf "$(cat example_log.log | awk '{print$1}' | sort -n | uniq -c | sort -n | tail -1)\n"
}

# What is the most requested page?
function page_with_most_requests() {
         echo "Number of request and page address"
         printf "$(cat example_log.log | awk '{print$7}' | sort | uniq -c | sort -rn | head -n 1)\n"
}

# How many requests were there from each ip?
function number_of_requests_by_ip() {
         echo "Number of requests and ip adresses"
         printf "$(cat example_log.log | awk '{print$1}' | sort | uniq -c | sort -rn)\n"
}

# What non-existent pages were clients referred to?
function non_existent_pages() {
         echo "Number of requests and page addresses"
         printf '%s\n' "$(cat example_log.log | grep "404" | cut -f7 -d' ' | sort | uniq -c | sort -rn)\n"
}

# What time did site get the most requests?
function time_most_request() {
         echo "Time with the most requests"
         printf "$(cat example_log.log | awk '{print $4}' | cut -d/ -f3 | cut -d: -f2,3,4 | uniq -c | sort -n | tail -1)\n"
}

# What search bots have accessed the site?
function search_bots() {
         echo "Here is a list of all the Search Bots:"
         printf "$(cat example_log.log | awk '{print $1,$12}' | grep -i bot | sort | uniq -c | sort -rn)\n"
}



# The function that helps to display a list of possible keys and their description.
function info() {
            echo "--m : From which ip were the most requests?"
            echo "--r : What is the most requested page?"
            echo "--ip : How many requests were there from each ip?"
            echo "--n : What non-existent pages were clients referred to?"
            echo "--mr : What time did site get the most requests?"
            echo "--b : What search bots have accessed the site?"
}

if [[ $# -eq 0 ]]; then
        # If no arguments
        echo "You haven't entered parametrs. Here is the list of possible."
          info
else
          for key in $@; do

                  if [[ $key == "--m" ]]; then
                          ip_were_most_requests
                  elif [[ $key == "--r" ]]; then
                          page_with_most_requests
                  elif [[ $key == "--ip" ]]; then
                          number_of_requests_by_ip
                  elif [[ $key == "--n" ]]; then
                          non_existent_pages
                  elif [[ $key == "--mr" ]]; then
                          time_most_request
                  elif [[ $key == "--b" ]]; then
                          search_bots
                  else

                          echo "The key ${key} does not exists. Here is the list of possible:"
                          info
                  fi
          done
fi

