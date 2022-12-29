# Spark Jobs, Stages and Tasks

### Spark Dataframe API Categories

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/Transformations.png?raw=true "Title")

- **Transformations**
  - Narrow Transformations 
    - In this transformation, only single partition is enough to calculate the results.
    - There is data movement (data shuffling) occurs in this case.
    - select(), filter(), withColumn(), withColumnRenamed()

  - Wide Transformation
    - In this transformation, multiple partitions are required to calculate the results.
    - There is a definitely a data movement occurs in this case.
    - groupbykey(), orderbykey(), join()

- **Actions**
  - This is used to trigger some work job like read(), write(), collect(), take() and count()

```
survey_df = spark.
            read.
            option("header",True).
            csv(args(0))
```

```
survey_df = survey_df.repartition(2)
count_df = survey_df.where(col("Age")>40)
                    .select("Age","Gender","Country")
                    .groupBy(col("Country")
                    .count()
```

These code blocks are two different blocks because they have two different actions. **Each action creates a spark job**.

**Jobs** : Each action creates a single spark job (there are two actions in above example - read(), count()).

Note : Spark Driver creates a logical plan of each spark job.

**Stage** 
- Stages are created by the usage of wide dependencies. Means each wide dependency creates one stage. 
- Each stage can have one or more narrow transformation but it must only have one narrow transformation.
- Each stage must ends with a wide transformation.
- Output of the first stage is stored under **Write Exchange** and can be read only by **Read Exchange** of next stage. This whole operation is called as **Shuffle Sort Operation**.
- The number of stages can be calculated by
  ```
  Number of stages = Number of Wide Transformation + 1
  ```

Note : Spark finish first stage operation then starts the second stage operation because output of the first stage is the input of the next stage (second stage).

**Tasks**
- Execution of multiple same plan in parallel is called as Task
- The number of task is based on the number of partitions.

**Slots**
- The parallel threads (CPU Cores - 4 core, 8 core) on each executor container is called as Slot. 
- The driver knows how many slots are available on each container.