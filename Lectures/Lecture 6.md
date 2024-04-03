#Lecture #IntroDataScience 
Remember the process for data science:
1. Read the data (have it accessible for data interpretation)
2. Data wrangling (format the data correctly)
3. Data exploratory (try to understand and interpret the data)
4. Modelling (try to make predictions based off the data)
5. Communicate (present findings from the data)

## Specifying Column Types
Covering on a quick note before we jump into data wrangling. When using readr, you are able to specify the data type of the Tibble columns. When using data frames, if there is one value in a column that doesn't line up, it could force the whole column of all-but-one integers to be char strings. 

The readr package will guess what the type of the column is and convert them as appropriate. However, we can prevent this by specifying what data types should be used for each column when reading the data in!

```R
tbl <- read_csv("data/data.csv",
			   col_types = cols(
				   x = col_double(),
				   y = col_date()
				   )
				)
```

For importing data (i.e. [dates](https://r4ds.had.co.nz/data-import.html#readr-datetimes)), check out [this](https://r4ds.had.co.nz/data-import.html#data-import) for importing different data types.

If you have any issues importing a table, check out `problems(tbl)`, where `tbl` is the df/tibble that you are having issues with
## Data Wrangling
Data wrangling is the process of transforming the data to a state that is ready to be analysed. Without it, the data may not be analysed correctly, or at all. Data wrangling itself has a 5-step process:
1. Gather your data from different sources
2. Clean up duplicates, blanks and other logical errors
3. Join relevant data into individual tables
4. Add new variables/records by calculating new fields and reordering
5. Visualise data to remove outliers and illogical results

In the last lecture we talked a lot about importing data, so in this lecture we are focusing on manipulation and cleansing.

### dplyr
The dplyr package is another subpackage in the tidyverse bundle. It allows for five main functions to be used, and each one uses a data frame as a parameter and returns a data frame.
#### `filter()`
`filter()` extracts some rows based on a search criteria
```R
# call the required libraries  
library(tidyverse)  
library(nycflights13)  
df <- flights  
# filter based on conditions  
filter(df, month == 1, day == 1)  
filter(df, month == 12, day == 25)  
# you may combine conditions using logical  
operators  
filter(df, month == 1 | month == 12)  
# or by combining variables in vector  
filter(df, month %in% c(11, 12))  
# comma means and (&)  
# for example, extract all records for flights,  
that were not delayed (arr and dep) more than 2 hrs  
filter(flights, arr_delay <= 120, dep_delay <= 120)
```

#### `select()`
`select()` extracts some columns based on a search criteria
```R
# call the required libraries  
library(tidyverse)  
library(nycflights13)  
df <- flights  
# Select columns by name  
select(flights, year, month, day)  
# Select all columns between year and day  
(inclusive)  
select(flights, year:day)  
# Select all columns except those from year to day  
(inclusive)  
select(flights, -(year:day))  
# rename() is a variant of select() that keeps all the variables that aren’t explicitly mentioned:  
rename(flights, tail_num = tailnum)  
# Move a variable to the start of the data frame.  
select(flights, time_hour, air_time, everything())
```
#### `mutate()` 
`mutate()` adds or modifies existing columns
```R
# call the required libraries  
library(tidyverse)  
library(nycflights13)  
df <- flights  
# Create a new dataset  
flights_sml <- select(df, year:day, ends_with("delay"),  
distance, air_time )  
# add new columns to the data frame  
mutate(flights_sml, gain = dep_delay - arr_delay, speed =  
distance / air_time * 60 )  
# Note that you can refer to columns that you’ve just created:  
mutate(flights_sml, gain = dep_delay - arr_delay, hours =  
air_time / 60, gain_per_hour = gain / hours )  
# If you only want to keep the new variables, use transmute():  
transmute(flights, gain = dep_delay - arr_delay, hours =  
air_time / 60, gain_per_hour = gain / hours )
```
#### `arrange()` 
`arrange()` sorts the rows
```R
# call the required libraries  
library(tidyverse)  
library(nycflights13)  
df <- flights  
# sort data by distance  
arrange(df, distance)  
# sort data by distance descendingly  
arrange(df, desc(distance))  
# Sort Data by Multiple Variables  
arrange(df, dep_time, arr_time)
```
#### `summarise()` 
`summarise()` aggregates the data across rows (e.g., group them according to some criteria)


