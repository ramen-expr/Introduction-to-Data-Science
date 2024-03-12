## Ethics
Do not cause harm with the power you have been entrusted with. Data and information can greatly impact people, and people are vulnerable when presenting you their data. Do not exploit them or dig deeper than you should.

Ethics are less legally enforced since technology is advancing at a greater rate than policy and legislation. It is up to us as data scientists to uphold the standard. 

Step 1 before performing analysis is to anonymise data and determine a code of conduct with the team. Once the job is complete, you should be completely release access of the data. It is stealing to keep that data. Trust between client and data scientist is the key to success. Value this and do not betray this trust

There are a number of different data types within R, the most basic of which are:
- Characters
- Numeric
- Logical
- Complex (i.e. imaginary numbers).

## Data Structures
We need data structures otherwise data will get messy and unorganised. We can think of data structures as a set of shelves. This shelf needs to be given one name. Questions to ask:
- What type of data do we put in it?
- How do we access these data points?
- How do we perform operations on these elements?

We have 2 main categories of data structures:
- Those with similar types of items (homogeneous)
- Those with differing types of items (heterogeneous)
### Homogeneous
- Vectors (1 dimensional)
- Matrices (2 dimensional)
- Arrays (n dimensional)

### Heterogeneous
- Lists (1 dimensional)
- Data frames (2 dimensional)

Things like an image can be stored in a matrix. A video would be stored in an array. This can be done because each data point is a pixel.

In a list, you can store things like:
- Customer name
- Age
- Customer ID, etc

A data frame is almost like a spreadsheet, where you can have different columns of different data types, but everything under those columns is one data type.
#### Vectors
Data is arranged in one dimension. Can be used as a stack or queue
Creating a vector in R can be done by `vectorName <- c("elem1", "elem2", "elem3", "elem4")`.

Getting the length of these is done by `length(vectorName)` and getting the type of elements is done by `mode(vectorName)`

To access elements within the vector, use `myVector[i]', where `i` is the position of the element within the vector.

To specify a subtype you want a data type to be, use the `as.*(someVector)` function, parsing a vector into the function.

If there is a mismatched type (e.g. some string variable in the vector alongside a bunch of numbers), the whole vector will be converted into whatever datatype can hold all the values. in the case mentioned before, the whole vector would become a string vector.

To combine vectors together, you are able to use the concat function like so: 
```R
fruit <- c("apple", "banana")
veg <- c("brocoli", "carrot")
all_items <- c(fruit, veg)
```

Sequences are defined by the following:
`x:y`, so that the resulting vector will be all integers between and including `x` and `y`.

To create a sequence that doesn't follow conventional steps of 1, use `seq(x, y, z)` where `x` is the starting number, `y` is the ending number and `z` is the increment.

There are also a different set of uses for `seq(...)`:
- `seq(from= x, to= y, length= a)` where `a` is the number of elements that should be included.
- `seq(length= a, from= x, by=z)`
### Random functions
These can be used to generate sample data. They can be used for different distributions
### Repeating Vectors
To generate sequences with repeating patterns, use the `rep(...)` function. 

Use case 1:
vec <- rep(1:2, 5)
>> 1 2 1 2 1 2 1 2 1 2


Use case 2:
vec <- rep(1:2, each= 3)
>> 1 1 1 2 2 2


Use case 3:
vec <- rep(1:2, length.out=7)
>> 1 2 1 2 1 2 1

Use case 4:
vec <- rep(c("m", "f"), 3)
>> "m" "f" "m" "f" "m" "f"

