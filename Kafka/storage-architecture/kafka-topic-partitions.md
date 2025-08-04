# Apache Kafka – Understanding Topics and Log File Organization

Welcome to this walkthrough on how Apache Kafka stores and organizes messages under the hood. This guide covers the basics of **Kafka Topics**, **Partitions**, and how they are represented at the **file system level** inside Kafka brokers.

---

## 🔍 What is a Kafka Topic?

A **Kafka Topic** is a logical channel or category where messages are published and consumed.

- Think of it like a **table in a database**.
- You must create a topic before sending any messages to it.
- Topics group similar types of messages for efficient processing.

---

## 🧩 Topic Partitions

Kafka Topics can be **partitioned** — this allows parallel processing and scalability.

### Why Partitions?
- Topics may contain **millions of messages**.
- Storing them in a single file is inefficient.
- Kafka **splits a topic into partitions** for manageability and throughput.

### Under the Hood
- **Each partition is a physical directory** on the Kafka broker.
- Creating a topic with 5 partitions results in **5 directories** being created under the broker's data directory.

---

## ⚙️ Kafka Cluster Setup Example

In a sample setup:
- A **3-node Kafka cluster** is running.
- All brokers are configured to use a **common `/tmp` directory**.
- Each broker creates some initial files when started.
- Once a topic is created, the partition directories are also generated.

---

## 🛠️ Creating a Kafka Topic (Command Example)

You can create a topic using the `kafka-topics.sh` script:

```bash
kafka-topics.sh --create \
  --zookeeper localhost:2181 \
  --replication-factor 1 \
  --partitions 5 \
  --topic invoices
