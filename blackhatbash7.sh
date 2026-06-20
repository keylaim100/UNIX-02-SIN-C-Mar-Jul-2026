#!/bin/bash
grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt
ps | grep TTY
ps | grep tty
ps | grep -i tty
grep -v "35.237.4.214" log.txt