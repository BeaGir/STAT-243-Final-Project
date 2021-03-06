% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Lg.R
\name{Lg_table}
\alias{Lg_table}
\title{Lg_table}
\usage{
Lg_table(dataset, setsarg)
}
\arguments{
\item{dataset, }{a data-set with numeric variables}

\item{setsarg, }{a list of indices defining subsets of the dataset}
}
\value{
the Lg coefficient matrix between all subsets of data
}
\description{
Computes the Lg coefficients between two tables
}
\examples{

# With the wines dataset
wines <- read.csv("https://raw.githubusercontent.com/ucb-stat243/stat243-fall-2016/master/problem-sets/final-project/data/wines.csv", stringsAsFactors = FALSE)
sets <- list(2:7, 8:13, 14:19, 20:24, 25:30, 31:35, 36:39, 40:45, 46:50, 51:54)
scaling_vec <- apply(subset(wines, select = unlist(sets)), 2, function(x) sqrt(sum((x - mean(x))^2)))
tables <- data_tables(wines, sets, TRUE, scaling_vec)
sets_shift <- list(1:6,7:12,13:18,24:29,39:44)
dataset1 <- as.data.frame(tables)
Lg_dataset <- Lg_table(dataset1, sets_shift)

Simpler exampler
dataset1 <- data.frame(V1 = 1, V2 = 1:10, V3 = c(-1,1), V4 = runif(5), V5 = runif(5))
sets1 <- list(1:2,3:4)
Lg_dataset <- Lg_table(dataset1, sets1)
}

