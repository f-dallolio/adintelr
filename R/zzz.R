

#' Connect to 'adintel' database when the package is loaded
#'
#' @param libname Library
#' @param pkgname Package name
#'
#' exportPattern tbl|query|execute|src|^lahman_*
.onLoad <- function(libname, pkgname) {
  # Use the internal function to create a db connection (see connections.R)
  con <- adintel_create_connection()

  # Add tbl, query, execute, etc functions to the package
  package_env <- parent.env(environment())
  dbcooper::dbc_init(con, "adintel", env = package_env, table_formatter = table_formatter)
}

.onUnload <- function(libpath){
  dbcooper::dbc_clear_connections()
}
