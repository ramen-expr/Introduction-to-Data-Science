#Lecture #IntroDataScience 
## Data Science Principles
The process is very simple, but it is very effective
1. Read the data (have it accessible for data interpretation)
2. Data wrangling (format the data correctly)
3. Data exploratory (try to understand and interpret the data)
4. Modelling (try to make predictions based off the data)
5. Communicate (present findings from the data)

Repeat steps 2-4 until a comprehensive idea has been formed and communicated.

## Data Formats
Data scientists need ways to share data and information easily. We have a lot of modern data formats that we use to store this data, such as csv files, xlsx spreadsheets, SQL databases and other software-specific files. In this unit, we will mostly cover more basic data formats, like .txt, .csv and others of the sort. We transfer this data into data frames so they can be manipulated.
This is where the first step comes into play.
### Reading the Data
(I have a good section of different formats you can import to R on the [[R things I found cool]] page)
Say we have a .csv file with a bunch of data we want to analyse. We can import a csv file in by using the following:

```R
data <- read.csv("your_file.csv")
```

Done, it is now in a data frame. However it is not really as fast as we want it to be. The R base classes are good, but when you send out a piece of software that will be used by the masses, it is likely someone will come up with a better solution. So now, we have a Tibble, a customised version of a data frame that is ten times faster than the standard data frame. It is designed for bigger datasets and has some features that a data frame does not.

Tibbles are part of the tidyverse library, and they have sub-packages like:
- `readr` to import data
- `tidyr` and `dplyr` to wrangle the data
- `ggplot2` to plot the data

Now, in the readr package, there are a lot of different functions to help you read data. You can find more information [here](https://readr.tidyverse.org/) but the basics are:
- `read_csv()`: comma-separated values (CSV)
- `read_tsv()`: tab-separated values (TSV)
- `read_csv2()`: semicolon-separated values with `,` as the decimal mark
- `read_delim()`: delimited files (CSV and TSV are important special cases)
- `read_fwf()`: fixed-width files
- `read_table()`: whitespace-separated files
- `read_log()`: web log files

Writing data is also easy enough:
- `write_delim(x, file, delim = " ")` Write files with any delimiter. 
- `write_csv(x, file)` Write a comma delimited file. 
- `write_csv2(x, file)` Write a semicolon delimited file. 
- `write_tsv(x, file)` Write a tab delimited file.

There is also a cheat sheet [[data-import.pdf]]

All of these imports will return a Tibble.