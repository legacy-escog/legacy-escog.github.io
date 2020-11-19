#!/bin/bash

find $1/$2 -type d -exec python3.7 urls.py {} urls_$2 $2 \; -print 
