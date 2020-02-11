#!/bin/bash
date > /tngbench_share/start.txt

#echo "Starting Promethues exporter..."
#python3 prometheus_exporter.py &#> exporter.log &

3proxy -f /etc/3proxy/3proxy.cfg -D # &

echo "3PROXY VNF started ..."
