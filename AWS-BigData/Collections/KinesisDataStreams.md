# Kinesis Data Stream


![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/KinsesDataStreams.png?raw=true "Title")

- Amazon Kinesis is an Amazon Web Service designed to process large-scale data streams from a multitude of services in real-time.
- It can be considered, like **Apache Kafka**, as a kind of message broker.
- One of the key benefits of Kinesis (and Kafka) is that it allows you to process and analyze data nearly immediately, rather than waiting for a complete dataset to arrive, then processing it, then delivering it for analysis. 

### Architecture
-The kinesis data stream consist of shards which is essentially required to store the data.
- These shards are usually defined before the creation of KDS (Kinesis Data Stream)
- It can consist of multiple shards.
- The data can not be deleted in KDS once inserted.


