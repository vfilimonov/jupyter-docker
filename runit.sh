#!/bin/bash

echo "Dockerized jupyter notebook: START (`date "+%Y-%m-%d %H:%M:%S"`)"
cd /app/home

# Create new environment (if does not exist) and add it to PYTHONPATH
python3 -m venv --system-site-packages env
source env/bin/activate
export PYTHONPATH=$PYTHONPATH:/app/home/env/lib/python3.7/site-packages

# Run jupyter server
jupyter notebook --ip=0.0.0.0 --port=8899
