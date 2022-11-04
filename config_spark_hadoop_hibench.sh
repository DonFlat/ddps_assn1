#!/bin/bash
# Simple script to configure the systems for DDPS course 2202

set -eu

if [[ $# -lt 1 ]] ; then
	echo ""
	echo "usage: ./configure_spark_hadoop_hibench.sh [nodes]"
	echo "for example: ./configure_spark_hadoop_hibench.sh node105,node106,node107"
	echo ""
	exit 1
fi

echo "Configuring the three systems on ${1}"
nodes=${1}
IFS=',' read -ra node_list <<< "$nodes"; unset IFS
master=${node_list[0]}
worker=${node_list[@]:1}
echo "master is "$master
echo "worker is "$worker

# Set the master node in hadoop and HiBench master
sed -i -r "s/node[0-9]{3}/$master/g" \
    /var/scratch/ddps2206/hadoop-3.3.4/etc/hadoop/core-site.xml \
    /var/scratch/ddps2206/hadoop-3.3.4/etc/hadoop/yarn-site.xml \
    /var/scratch/ddps2206/HiBench/conf/hadoop.conf \
    /var/scratch/ddps2206/HiBench/conf/spark.conf


# Set the hadoop worker nodes
echo "$worker" > /var/scratch/ddps2206/hadoop-3.3.4/etc/hadoop/workers

# Set Spark master nodes
echo "export SPARK_MASTER_HOST=$master" >> /var/scratch/ddps2206/spark/conf/spark-env.sh

# Set Spark worker nodes
echo "$worker" > /var/scratch/ddps2206/spark/conf/workers
