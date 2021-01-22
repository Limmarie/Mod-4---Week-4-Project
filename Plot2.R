## Qn 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == “24510”) from 1999 to 2008? Use the base plotting system to make a plot answering this question.

# create Baltimore data which will be NEI_data subset
baltdata <- NEI_data[NEI_data$fips=="24510", ]

# Baltimore yearly emmisisons data
baltYrEmm <- aggregate(Emissions ~ year, baltdata, sum)

cols1 <- c("pink", "yellow", "orange", "blue")
barplot(height=baltYrEmm$Emissions/1000, names.arg=baltYrEmm$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Baltimore Aggregated PM'[2.5]*' Emmissions by Year'), col = cols1)

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

