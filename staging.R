library(httr)
library(jsonlite)
library(duckdb)

source('swapi_functions.R')

loop_skywalker(c('films', 'people', 'planets'), 'stg')


