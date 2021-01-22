## Qn 4: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

chart1 <- ggplot(baltYrTypEmm, aes(factor(year), Emissions))
chart1 <- chart + geom_bar(stat="identity") +
  xlab("year") +  
  ylab("Total Emissions") +
  ggtitle('Total [2.5] Coal Emissions From 1999 to 2008')
print(chart1)

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()