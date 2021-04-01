#!/bin/bash
mail -a "Content-Type: text/plain; charset=UTF-8" -s "$LOGNAME@$HOSTNAME" -r [user]@[mail.ex] [user]@[mail.ex] < $1