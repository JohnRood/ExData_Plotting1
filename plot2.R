household_power_c <- read.table("~/Coursera/Johns_Hopkins_Data_Science_sequence/Exploratory_Data_Analysis/Project_1/household_power_consumption.txt", quote="\"", comment.char="", sep=";", header = TRUE )
t_slash <- "1/2/2007"
t_start <- match( t_slash, as.character( household_power_c$Date ) )
print( t_start )
## We know that 2 days = 48 hours of data is precisely 2*24*60=2880 rows.
t_end <- t_start + 2880 - 1  ## Picket Fence Property:  Count the spaces not the pickets.
## http://betterexplained.com/articles/learning-how-to-count-avoiding-the-fencepost-problem/
print( t_end )
hpc_short <- household_power_c[ t_start:t_end, ]
png( "plot2.png" )
plot(as.numeric(hpc_short$Global_active_power), type="l", ylab="Global Active Power (kilowatts)")
dev.off()
