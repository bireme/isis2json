#!/bin/bash

PYTHONPATH=../isisdm/:$PYTHONPATH

python isis2json.py -t $1 ../fixtures/lilacs1/LILACS.iso

#jython isis2json.py -t $1 ../fixtures/lilacs1/LILACS.mst
