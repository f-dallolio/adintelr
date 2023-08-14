adintel_create_connection <- function() {
  DBI::dbConnect(
    RPostgres::Postgres(),
    dbname = "adintel_2014",
    host = "10.147.18.200",
    port = 5432,
    user = "postgres",
    password = "100%Postgres"
  )
}
