#!/bin/bash

crontab producer.cron
printenv >> /etc/environment
cron -f
