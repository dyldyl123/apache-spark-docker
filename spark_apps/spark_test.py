from pyspark.sql import SparkSession, Row
spark = SparkSession.builder.getOrCreate()

print(spark)
print("hello from spark")
def main_test():
    test_df = spark.createDataFrame(data = [Row(bob="test")],schema="bob:STRING")
    test_df.show()


if __name__ == "__main__":
    main_test()
