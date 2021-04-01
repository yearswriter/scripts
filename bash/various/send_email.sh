#!/bin/bash
echo "$@" | mail -s "$LOGNAME@$HOSTNAME" -r [user]@[mail.ex] [user]@[mail.ex]