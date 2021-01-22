## Qn 3: Of the four types of sources indicated by the \color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

# Baltimore yearly emmisisons data
baltYrTypEmm <- aggregate(Emissions ~ year+ type, baltdata, sum)

chart <- ggplot(baltYrTypEmm, aes(year, Emissions, color = type))
chart <- chart + geom_line() +
  xlab("year") +
  ylab(expression('Total Emissions')) +
  ggtitle('Total Baltimore Emissions [2.5]* From 1999 to 2008')
print(chart)

dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
