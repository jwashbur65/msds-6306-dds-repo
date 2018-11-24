factorial2 = function(x) {
  if (x < 0) {
    return(NaN)
  }
  else {
    if (x == 0) {
      print("Done")
      return(1)
    }
    else {
      #print(x);
      #factorial2(x-1);
      return(x*factorial2(x-1))
      #print(x);
    }
  }
}