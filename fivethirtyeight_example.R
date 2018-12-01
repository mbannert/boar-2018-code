library(fivethirtyeight)

check_ds <- function(f = summary,
                     pkg = NULL){
  if(is.null(pkg)){
    d <- data()  
  } else{
    d <- data(package = pkg)  
  }
  nms <- d$results[,3]
  data_env <- new.env()
  data(list=nms, envir = data_env)
  eapply(data_env,f)
}

out <- check_ds(summary,
                "fivethirtyeight")



