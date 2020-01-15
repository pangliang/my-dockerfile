#!/bin/bash

# Directory to find config artifacts
CONFIG_DIR="/tmp/hadoop-config"

# Copy config files from volume mount
for f in slaves core-site.xml hdfs-site.xml mapred-site.xml yarn-site.xml; do
  if [[ -e ${CONFIG_DIR}/$f ]]; then
    cp ${CONFIG_DIR}/$f $HADOOP_HOME/etc/hadoop/$f
  fi
done

if [ "$1" = "namenode" ]; then
  shift 1
  mkdir -p /root/hdfs/namenode
  $HADOOP_HOME/bin/hdfs namenode -format -nonInteractive
  $HADOOP_HOME/bin/hdfs namenode

elif [ "$1" = "datanode" ]; then
  shift 1
  mkdir -p /root/hdfs/datanode
  $HADOOP_HOME/bin/hdfs datanode

fi

exec "$@"