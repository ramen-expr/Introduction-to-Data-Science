---
title: "Tutorial 1"
author: "Tom Lyle"
date: "2024-02-14"
output: html_document
---

### Class introduction
The goal for this lesson is the install R, introduce ourselves and take some time to get familiar with R and R-Studio.

### Basic Operation of R and R-Studio
So there are some basic operators that we can talk about

`x <- 1`: assigning variables\n
`2 == 10`: logical equals\n
You can also use standard operations, i.e. `2+3`, `10-2`, `5*9`, ...\n

### Functions
This is not how to write functions (sadge). This is about using functions, as R has a large number of built-in functions that we can make use of.

#### paste
```R
paste('Leo', 'the', 'lion')
>> "Leo the lion"

paste('a', 1:5)
>> "a 1", "a 2", "a 3", "a 4", "a 5"
```

Note: You can change the separator. E.g.
```R
paste('a', 1:5, sep="")
>> "a1", "a2", "a3", "a4", "a5"

paste('a', 1:5, sep="", collapse=",")
>> "a1","a2","a3","a4","a5"
```

#### readline
```{r, include=TRUE}
readline(prompt = "What is your age? ")
```
Allows you to take input from the **console**. Makes for a more flexible program.

### .Rmd Files
So turns out they want us using markdown files, but more specifically, using `.Rmd` (R specific markdown). This is really cool, and it means that I'll be able to sync this well with my markdown within Github. 
Code chunks have this really cool set of settings where you are able to set a bunch of options. You have a number of options where you can customise how the code is run. A list of these commands can be found at this link: https://raw.githubusercontent.com/rstudio/cheatsheets/main/rmarkdown.pdf
```{r, include=TRUE, eval=TRUE}
age <- 23
age <- age + 2
age <- age * 3
age <- age - 6
age <- age / 3

age
```
In summary, it's kinda like a cooler Jupyter notebook.

### Shortcuts
Within R-Studio, there are plenty of shortcuts you can use. The best one is `alt+shift+k` which displays ALL of the shortcuts.
