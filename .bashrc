# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
module load gcc
module load slurm
module add prun
module add python/3.6.0

alias c="clear"
# Setting up Java path
export JAVA_HOME=/var/scratch/$USER/jdk8u345-b01;
export PATH=${JAVA_HOME}/bin:${PATH};
alias java="$JAVA_HOME/bin/java"

# Setting up Spark path
export SPARK_HOME=/var/scratch/$USER/spark;
export PATH=${SPARK_HOME}/bin:${PATH};

export HADOOP_HOME=/var/scratch/ddps2206/hadoop-3.3.4;
export PATH=${PATH}:${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin;

export PATH=${PATH}:/var/scratch/ddps2206/apache-maven-3.8.6/bin;

alias spadir="cd /var/scratch/ddps2206/spark"
alias big="cd /var/scratch/ddps2206"
alias jadir="cd /var/scratch/ddps2206/jdk8u345-b01"
alias haddir="cd /var/scratch/ddps2206/hadoop-3.3.4"
alias res25="preserve -# 2 -t 00:05:00"
alias res415="preserve -# 4 -t 00:15:00"
alias pll="preserve -long-list"
alias hadex="cd /var/scratch/ddps2206/hadoop-3.3.4/share/hadoop/mapreduce"
alias spaexpy="cd /var/scratch/ddps2206/spark/examples/src/main/python"
alias spaexjav="cd /var/scratch/ddps2206/spark/examples/src/main/java/org/apache/spark/examples"
alias kmeans="cd /var/scratch/ddps2206/HiBench/bin/workloads/ml/kmeans"
