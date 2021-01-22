## Qn 5: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

# Fips = "24510" Baltimore Motor Vehicle PM[2.5]* Emissions from 1999 to 2008
chart <- ggplot(baltYrTypEmm, aes(factor(year), Emissions))
chart <- chart + geom_bar(stat="identity") +
  xlab("year") +
  ylab("Total Emissions") +
  ggtitle('Baltimore Motor Vehicle PM[2.5] Emissions From 1999 to 2008') 
print(chart)

dev.copy(png, file="plot5.png", height=480, width=480)
dev.off()