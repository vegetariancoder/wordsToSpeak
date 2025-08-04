## 🔁 Replication Factor

In Apache Kafka, the **replication factor** defines **how many copies** of each partition should be maintained for fault tolerance and high availability.

### 🔢 Calculation

The total number of **partition replicas** is:



### 📌 Example:

Suppose we create a topic called `invoices` with:

- **5 partitions**
- **Replication factor = 3**

This means:
- Kafka creates a total of **15 directories** (5 partitions × 3 replicas).
- Each directory represents a **replica of a partition**.

These directories are **spread across multiple brokers** in the cluster.

### 📁 Where are these directories?

- You’ll only see **5 directories** in one broker.
- The other **10 replicas** are distributed to the **remaining two brokers**.
- So across all brokers, the topic `invoices` has **15 directories** in total.

### 🧩 Terminology

| Term                          | Meaning                                              |
|-------------------------------|------------------------------------------------------|
| Partition                    | A single slice of a topic (primary log storage unit) |
| Replica                      | A copy of a partition stored on a different broker   |
| Partition Replica            | One of the multiple copies of a specific partition   |

> Example naming:  
> - Partition 0: Replica 1, Replica 2, Replica 3  
> - Partition 1: Replica 1, Replica 2, Replica 3  
> - … and so on.

---

## ✅ Summary

- The **replication factor ensures durability**.
- Kafka **automatically syncs replicas** and handles failover.
- More replicas = higher availability (but more disk usage).

---

