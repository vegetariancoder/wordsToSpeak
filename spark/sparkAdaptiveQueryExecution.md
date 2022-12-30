# Spark Adaptive Query Execution

#### What is Adaptive Query Execution

- AQE is a query re-optimization that occurs in between query execution.
- It is a dynamic process of query optimization that happens in the middle of the query execution using runtime statistics as it’s optimization input.

#### Spark's adaptive query execution solves following problems:
1. **Dynamically coalescing shuffle partitions**- (which solves the problem of **Incorrect number of shuffle partitions**)
2. **Dynamically switching join strategies**- (which solves the problem of **Incorrect join strategies**)
3. **Dynamically optimizing skew joins**- (which solves the problem of **Highly skewed datasets**).

The logical execution plans looks like this :

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/queryPlan.png?raw=true "Title")

**Dynamically coalescing shuffle partitions**

Let's suppose we have a data of 10 partitions and and we have 5 distinct values of tower. The code looks like this :

```
df.groupBy("tower_location")
  .agg(sum("call_duration")).alias("duration_served")
```

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/dynamicPartition.png?raw=true "Title")


**Dynamically switching join strategies**

Join Strategy Types:
1. **Broadcast Hash Join** : When one of the data frames is small and fits in the memory, it will be broadcasted to all the executors, and a Hash Join will be performed.
2. **Shuffle Hash Joins** : When the table is relatively large, the use of broadcast may cause driver- and executor-side memory issues. In this case, the Shuffle Hash Join will be used. It is an expensive join as it involves both shuffling and hashing. Also, it requires memory and computation for maintaining a hash table.
    - Step 1- Shuffling: The data from the Join tables are partitioned based on the Join key. It does shuffle the data across partitions to have the same Join keys of the record assigned to the corresponding partitions.
    - Step 2- Hash Join: A classic single node Hash Join algorithm is performed for the data on each partition.
3. **Shuffle sort-merge Join** : Shuffle Sort-merge Join (SMJ) involves shuffling of data to get the same Join key with the same worker, and then performing Sort-merge Join operation at the partition level in the worker nodes. Partitions are sorted on the Join key before the Join operation.
    - Shuffle Phase: Both large tables will be repartitioned as per the Join keys across the partitions in the cluster.
    - Sort Phase: Sort the data within each partition parallelly.
    - Merge Phase: Join the sorted and partitioned data. It is merging of the dataset by iterating over the elements and joining the rows having the same value for the Join keys.




