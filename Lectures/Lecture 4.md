#Lecture #IntroDataScience 
## Data Sources
We get data. We get a lot. There's some places to get some.
- [DataHub]( https://datahub.io/)
- [OpenML](https://www.openml.org)
- [Australia Open Data](https://data.gov.au/)
- [GitHub repositories, manually collated work](https://github.com/awesomedata/awesome-public-datasets)
This data can come in many different forms, such as text, images and sounds. The most common format of data is 2-D, where every row represents an entity/entry and each column is a field/property. Think spreadsheets. 

Rows of data can be related to the other or not. For an example, imagine multiple recorded states of one object, like a car driving, measuring its position over time. Each row is related to the other because each entry is related to the same car that is moving, and thus the rows are related. The opposite can be true, like a survey where each row is a new person answering the same set of questions. One person's responses have nothing to do with the person before or after them, and thus the rows do not relate to each other.

Each column can be categorical or quantitative. The quantitative data can be measured, where categorical is effectively multiple choice.

## Data Structure in R
Following on from last week's lecture, we can look into structures like matrices (2-D) and arrays (n-D). 
### Matrix
Creating a matrix is as simple as providing the elements that need to be in the matrix, and then providing the dimensions.
```r
m <- matrix(d, x, y)
```
where: 
- `x` is the number of rows 
- `y` is the number of columns
- `d` is the vector of elements (`c(...)`)

Display the values of elements of the first row from matrix matX.

```R
matX[1,]
```

Display the value of the element in the second row and third column of matY,

```R
matY[2,3]
```

#### Other functions
You can use `cbind()` and `rbind()` functions to join two or more vectors together or matrices, by columns or by rows, respectively.

You can also give names to the columns and rows of matrices, using the functions `colnames()` and `rownames()`. This facilitates memorising the data positions.
### Arrays
Creating an array is just about as easy, but instead of providing `x` and `y`, we provide a vector of the dimensions instead. An example 3-D array could look like this:
```R
elems <- c(4, 2, 45, 7, 8, 4, 1, 5, 7, 5, 1, 6)
dimnsns <- c(2, 2, 3)

arr <- array(elems, dimnsns)
```

### Lists
Don't you wish you could have a messy data structure which doesn't have to be ordered by data type? Enter lists. 

```R
my_lst <- list(name="Steph", age=20L, looks="HOT")
```
### Data Frames
This is the truest form of spreadsheet-like data structures. Like matrices, they are 2 dimensional, but they are able to have different data types in each row, allowing for individual entries to have differing fields. They even allow for the same functions included in matrices like `cbind()`, `rbind()`, `dim()` and more. A data frame can be thought of as a series of lists, where every row is its own list.

Creating data frames with vectors can be done like:
```R
# create dataframe from vectors  
employee <- c('John Doe','Peter Gynn','Jolie Hope')  
salary <- c(21000, 23400, 26800)  
startdate <- as.Date(c('2010-11-1','2008-3-25','2007-3-14'))  
employ.data <- data.frame(employee, salary, startdate)
```

and the structure of it can be done by checking:
```R
str(employ.data)

>>> 'data.frame':   3 obs. of  3 variables:
 $ employee : chr  "John Doe" "Peter Gynn" "Jolie Hope"
 $ salary   : num  21000 23400 26800
 $ startdate: Date, format: "2010-11-01" "2008-03-25" ...
```

You can get a subset of the data by using either the `[]` or `$` operators.

```R
my.dataset <- data.frame(site=c("A", "B", "A", "A", "B"),  
season=c("Winter", "Summer", "Summer", "Spring", "Fall"),  
pH=c(7.4,6.3,8.6,7.2,8.9), stringsAsFactors = FALSE)  
my.dataset[3, 2]  
my.dataset$pH  
my.dataset[my.dataset$pH > 7, ]  
my.dataset[my.dataset$pH > 7, "site"]  
my.dataset[my.dataset$season == "Summer", c("site", "pH")]
```

There's a few other cool functions of data frames:
```R
#1- add new column to the data frame, must be the same number of rows  
my.dataset$N03 <- c(234.5, 256.6, 654.1, 356.7, 776.4)  
#2- check number of rows  
nrow(my.dataset)  
#3- check number of columns  
ncol(my.dataset)  
#4- check dimension  
dim(my.dataset)  
#5- edit the existing dataset  
my.dataset <- edit(my.dataset)  
#6- create new dataset and open it in the edit mode  
new.data <- edit(data.frame())  
#7- check names of the columns  
names(my.dataset)  
#8- change names of the columns  
names(my.dataset) <- c("area", "season", "pH", "N03")
```