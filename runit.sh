#!/bin/sh

echo "Dockerized jupyter notebook: START (`date "+%Y-%m-%d %H:%M:%S"`)"
cd /app/home
jupyter notebook --ip=0.0.0.0 --port=8899
