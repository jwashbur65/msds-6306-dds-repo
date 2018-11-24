describe=function(x, showSapply=FALSE, showRowNames=FALSE) {
  print("---class---")
  print(class(x))
  
  print("---typeof---")
  print(typeof(x))
  
  print("---dim---")
  print(dim(x))
  
  print("---names (col names)---")
  print(names(x))
  
  if(showRowNames || (class(x) == "data.frame" && nrow(x) <= 20)) {
    print("---row.names---")
    print(row.names(x))
  }
  
  print("---str---")
  print(str(x))
  
  print("---summary---")
  print(summary(x))
  
  if(showSapply) {
    print("---sapply---")
    print(sapply(x, class))
  }
}