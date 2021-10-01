cars
lapply(cars, mean)
sapply(cars, mean)
vapply(cars, mean, 1)
InsectSprays
?split
compareSpray<-split(InsectSprays$count, InsectSprays$spray)
sapply(compareSpray, mean)
compareSpray
