# Set directory
setwd("/Users/user/Coursera/Mod 4 - Project 2")

# Download file and saved as csv
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", destfile = "FNEI_data.csv")

# Read PM2.5 Emissions Data (summarySCC_PM25.rds)
NEI_data <- readRDS("summarySCC_PM25.rds")

# Read Source Classification Code Table (Source_Classification_Code.rds)
SCC_data <- readRDS("Source_Classification_Code.rds")

## Qn 1: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
  Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

# aggregating NEI emmissions by year
yearly_emmissions <- aggregate(Emissions ~ year, NEI_data, sum)

cols <- c("blue", "orange", "yellow", "pink")
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()