adintel_create_connention <- function(variables) {
  DBI::dbConnect(
    RPostgres::Postgres(),
    dbname = "adintel",
    host = "10.147.18.200",
    port = 5432,
    user = "postgres",
    password = "100%Postgres"
  )
}
