## Qn 6: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

# Baltimore, MD-24510 and Los Angeles, CA-06037

vehicles <- grepl("vehicle", SCC_data$SCC.Level.Two, ignore.case=TRUE)
vehiclesSCC <- SCC_data[vehicles,]$SCC
vehiclesNEI_data <- NEI_data[NEI_data$SCC %in% vehiclesSCC,]

vehiclesBaltimoreNEI <- vehiclesNEI_data[vehiclesNEI_data$fips == 24510,]
vehiclesBaltimoreNEI$city <- "Baltimore City"
vehiclesLANEI <- vehiclesNEI_data[vehiclesNEI_data$fips=="06037",]
vehiclesLANEI$city <- "Los Angeles County"
bothNEI <- rbind(vehiclesBaltimoreNEI,vehiclesLANEI)

ggp <- ggplot(bothNEI, aes(x=factor(year), y=Emissions, fill=city)) +
  geom_bar(aes(fill=year),stat="identity") +
  facet_grid(scales="free", space="free", .~city) +
  guides(fill=FALSE) + theme_bw() +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Kilo-Tons)")) + 
  labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore & LA, 1999-2008"))
print(ggp)

dev.copy(png, file="plot6.png", height=480, width=480)
dev.off()