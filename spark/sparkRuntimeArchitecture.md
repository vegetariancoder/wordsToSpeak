# Spark Cluster and Runtime Architecture

### What is Apache Spark

- Spark is a distributed Computing Framework.
- Spark application is a distributed application.
- Spark application needs a cluster.
- Cluster technologies for apache spark are as follows:

    1. Hadoop YARN
    2. Kubernetes
    3. Apache Mesos
    4. Spark Standalone

### What is a Cluster

- A cluster is a pool of computers (group of machines interconnected through a network) working together but viewed as single computer.
- Suppose I have a cluster of 10 Worker Nodes (10 Single Machines).
- Worker Node Capacity
    - 16 CPU Cores
    - 64 GB RAM
- Cluster Capacity (Assuming we have 10 worker nodes)
    - 160 CPU Cores (16*10)
    - 640 GB RAM (64*10)

### Spark Runtime Architecture

Let's assume I want to run a spark application

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/sparkArchitecture.png?raw=true "Title")

1. I will use the spark-submit command to submit my application.
2. The job will submit to the YARN resource manager.
3. YARN resource manager will create an Application Master Container (AM Container) on a worker node and starts the applications main method.

<span style="color:green">Container</span> - An isolated virtual runtime environment that comes with a virtual CPU and memory allocation.

<span style="color:green">Driver Node</span>  : The node with AM container running on it is known as Driver Node or Master Node.

4. After starting the container the Driver Node will go back to the YARN RM and ask for some more containers (workers).
5. The YARN RM creates more containers on worker nodes and give them to driver.
6. Now the driver runs a spark executor on those containers.

<span style="color:green">Worker Node</span> : The node with executor containers running on it is known as Worker Node or Executor Node
7. The driver now will assign the work and monitor them.



