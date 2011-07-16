#!/bin/sh
SRV="http://127.0.0.1:5984"
./isis2json.py $1 -c -i 2 -q 25000 | curl -d @- -X POST $SRV/$2/_bulk_docs
./isis2json.py $1 -c -i 2 -q 25000 -s 25000 | curl -d @- -X POST $SRV/$2/_bulk_docs
./isis2json.py $1 -c -i 2 -q 25000 -s 50000 | curl -d @- -X POST $SRV/$2/_bulk_docs
./isis2json.py $1 -c -i 2 -q 25000 -s 75000 | curl -d @- -X POST $SRV/$2/_bulk_docs
