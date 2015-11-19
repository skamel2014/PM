install.packages("quantmod")
library(quantmod)
yh_dji<- new.env() # new.env returns a new (empty) environment with (by default) enclosure the parent frame.

getSymbols("^DJI", env=yh_dji,src="yahoo", return.class = 'xts', index.class = 'Date', from="2007-01-01",to= "2015-10-31")

dji<-yh_dji$DJI

dji_cls<-dji$DJI.Close


dji_tbl <- as.matrix(cbind(as.character(date.vect), dji))
#dji_cls
#dji_tbl <- as.matrix(cbind(as.Date(date.vect), dji)))
#chartSeries(dji_cls)

#date.vect = xts<-index(dji_cls)

write.csv(dji_tbl,"C:\\Users\\sam\\Desktop\\spring 2015\\DJI_Close_01_2000_to_12_2013.csv")