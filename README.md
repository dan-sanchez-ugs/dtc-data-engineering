# dtc-data-engineering
DataTalksClub Data Engineering Zoomcamp Workshop codespaces



--Week 3 Homework SQL statements
--1
SELECT count(1) FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet;

--2
SELECT count(DISTINCT PULocationID) FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet;

--3
SELECT PULocationID FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet;

SELECT PULocationID, DOLocationID  FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet;

--4
SELECT count(1) FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet 
where fare_amount=0;

--5
CREATE OR REPLACE TABLE dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet_partitioned_clustered
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS
SELECT * FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet;

--6
SELECT count(DISTINCT VendorID) FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet
WHERE DATE(tpep_pickup_datetime) BETWEEN '2024-03-01' AND '2024-03-15';

--9
SELECT count(*) FROM dtc-de-course-485504.zoomcamp.yellow_tripdata_parquet;
