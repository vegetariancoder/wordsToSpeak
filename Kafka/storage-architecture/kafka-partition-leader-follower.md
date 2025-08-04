# Apache Kafka - Partition Replicas Overview

## 🧠 Introduction

This section explains the classification of **Kafka topic partition replicas** into **Leaders** and **Followers**, using a topic with 5 partitions and a replication factor of 3.

---

## 📂 Partition Replica Classification

Kafka topic partitions are classified as:

- **Leader Partitions**
- **Follower Partitions**

---

## 🧑‍✈️ Leader Partitions

- When a topic is created, Kafka creates **one directory per partition**.
- These directories are the **Leader Partitions**.
- Each leader handles **all read and write requests** for that partition.

---

## 🧑‍🤝‍🧑 Follower Partitions

- If the **replication factor** is greater than 1, Kafka creates additional copies of each partition.
- These copies are called **Follower Partitions**.
- In our example:
  - **Partitions:** 5
  - **Replication Factor:** 3
  - **Followers per partition:** 2
  - **Total Directories:** 5 Leaders + (5 × 2) Followers = **15 Directories**

---

## 🔍 Identifying Leaders and Followers

- Use the `kafka-topics.sh --describe` command to identify:
  - **Which broker holds the leader**
  - **Which brokers hold the followers**

Example command:
```bash
kafka-topics.sh --describe --topic <topic_name> --bootstrap-server <broker_host>:9092
