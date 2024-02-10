### Save Plots/Graphs
If you want to save a plot you produced, run the following:
```R
# Example data 
x <- 1:10 y <- x^2  

# Save the plot to a PDF file 
pdf("plot_output.pdf") 
plot(x, y, main = "Example Plot", xlab = "X-axis", ylab = "Y-axis") 
dev.off()  # Close the PDF device
```
Then, the plot will be saved as "plot_output.pdf". You have the following options to use:
- `pdf()`: Saves the plot to a PDF file.
- `png()`: Saves the plot to a PNG file.
- `jpeg()`: Saves the plot to a JPEG file.
- `tiff()`: Saves the plot to a TIFF file.

### Import Datasets
So this one varies depending on the filetype, but only small variation really.
#### CSV
```R
data <- read.csv("your_file.csv")
```
#### Excel
If you have not installed it already, install the package "readxl"
```R
install.packages("readxl")  # Install the readxl package if you haven't already
```
Then, once installed, you can run the following:
```R
library(readxl)
data <- read_excel(path = "your_file.xlsx", sheet = "sheet_to_open")
```
#### Text Files
```R
data <- read.table("your_file.txt", header = TRUE)
```
#### JSON Files
Similar to Excel. Need to install an external package.
```R
install.packages("jsonlite")  # Install the jsonlite package if you haven't already
```
Then, once installed:
```R
library(jsonlite)
data <- fromJSON("your_file.json")
```
#### XML Files
Similar to Excel again. Install external package:
```R
install.packages("XML")  # Install the XML package if you haven't already
```
And then:
```R
library(XML)
data <- xmlTreeParse("your_file.xml")
```

All of these will import data as a tibble. A tibble is a lazier version of a data.frame. It keeps all that was good about them and none of what was bad. More data can be found on this in Chapter 10 of [[R-for-Data-Science.pdf]].

