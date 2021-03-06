% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tune_kmeans.R
\name{tune_kmeans}
\alias{tune_kmeans}
\title{Tune K-means.}
\usage{
tune_kmeans(tbl, k_max, nstart)
}
\arguments{
\item{tbl}{Data.}

\item{k_max}{Maximum number of centers to try.}

\item{nstart}{Number of random initial solutions for each trial.}
}
\value{
A data frame with two columns: (1) k, and (2) wss_to_tss.
}
\description{
Tune K-means.
}
