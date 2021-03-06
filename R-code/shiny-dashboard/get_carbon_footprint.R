get_carbon_footprint <- function(dataid) {
  
  library(RPostgreSQL)

  cat(dataid)
 
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv,host='localhost',port='5432',dbname='postgres',user='rahul',password='uconserve')
  query <- paste("select result_housing_total from co2flags where dataid = '",dataid,"'",sep = "")
  cat(query)
  rs <- dbSendQuery(con,query)
  data <- fetch(rs,n=-1)
  
  ### Disconnect from database
  dbDisconnect(con)
  dbUnloadDriver(drv)
  
  data$result_housing_total
}
