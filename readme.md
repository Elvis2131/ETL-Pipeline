#  ETL Pipeline

The goal of the project was to create an end to end ETL pipeline using pyspark and postgres database. The tasks invloved was to extract the data from postgres database and cleaning the data to suit my preference and making some queries to extract and organize the needed data after which a btree and hash indexes where performed on the data.

### Extraction Tasks
* Load the StackOverflow questions, answers and users datasets with pyspark.

### Data Tranformation Tasks
* Select users from only one country of your choosing.
* Extract the country and city into new columns.
* Join this with the questions and only pick questions with at least 20 view_counts.
* Join the answers to the results of (3).

### Data Loading Tasks
* Create a new schema called stackoverflow_filtered.
* Create one table called results.
* Use spark to write the results into this table with the snippet below.
* Create a btree index on the reputation column within the results table.
* Create a hash index on the display_name column within the results table.
* From the results table, create a view with the column names display_name, city,     questions_id where the accepted_answer_id is not null. Make sure this view goes into   the right schema.
* Create a materialized view similar to (6). They should have different names.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to run the script.

* Python: for the data manipulation.
* Gitbash: For pushing the files your repo.
* AWS(S3): For hosting the extracted files.
* An IDE(VScode or Jupyter Notebook): To run and edit the codes
* PostgresSQL database
* [Postgres connector](https://drive.google.com/file/d/1STvlmvtGuwSYyHZKm_7sq2dch3BrEUJ9/view?usp=sharing) 

### Installing

A step by step series of examples that tell you how to get a development env running

* Install python on your system(macOS, windows or Linux)
* Using pip and the [requirement file](https://drive.google.com/file/d/14mlEM-5mbhD4oQpF8fLCZXKZaLlTPo-C/view?usp=sharing), use the below command to install the required dependencies.
* Clone repo.

```
conda install -r requirement.txt
```
### Running the Script
* Create a folder in your jupyter notebook's directory and place the Postgres conector in it. (e.g C:\Users\USER\Desktop\Blossom_Academy\jars\postgresql-42.2.8.jar")

## Acknowledgments

* Hisham Osman
