#!/bin/bash
# Pipeline to find Top 5 IPs with most 404 errors
grep " 404 " /var/log/nginx/access.log | awk '{print $1}' | sort | uniq -c | sort -nr | head -5