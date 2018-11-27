factorial=function(x) {
  val = 1
  i=1
  if (x > 0){
    while (i <= x) {
      val = val*(i)
      i = i + 1
    }
  }
  else {
    val = NaN
  }
  val
}