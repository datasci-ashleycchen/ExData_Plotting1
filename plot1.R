# Background preparatory stuffs --
Init<-function(workDir="/WD/MyWorkshops/Coursera_Udacity/Data_Science_Specialization_Track/Exploratory_Data_Analysis/CourseProject_1"){
        setwd(workDir)
}

Init()

guestimate_gb <- 2075259*9*8/(2^20)/10^3 
if (guestimate_gb >= 2){
        stop ("File may be too big to run smoothly!")
}

initial<-read.table("household_power_consumption.txt", header=TRUE, sep=";",nrows=10)
classes<-sapply(initial, class)
orig_data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", nrows=2100000, colClasses=classes, na.strings = "?")

orig_data[,1]<-as.Date(orig_data[,1],"%d/%m/%Y")
abbre_data<-subset(orig_data, Date=="2007-02-01"|Date=="2007-02-02")
# End of: Background preparatory stuffs --


#Plot1: 
par(bg = "white")
hist(abbre_data$Global_active_power, xlab="GlobalActive Power (kilowatts)", main="Global Active Power", col="red", bg="white")
dev.copy(png, file="ExData_Plotting1/plot1.png",width=480, height=480)
dev.off()

#Alternatively:
#par(bg = "white")
#png(file="ExData_Plotting1/plot1.png",width=504, height=504)
#hist(abbre_data$Global_active_power, xlab="GlobalActive Power (kilowatts)", main="Global Active Power", col="red", bg="white")
#dev.off()


