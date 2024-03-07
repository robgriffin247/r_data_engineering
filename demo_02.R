library(duckdb)
library(data.table)

source('duck_functions.R')

films <- duck_get('SELECT * FROM stg_films')
setDT(films)
films[, year:=year(release_date)]
duck_write(films, "int_films")

duck_get("SHOW TABLES")
