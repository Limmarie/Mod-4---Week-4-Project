Exploratory Data Analysis – Week 4 Project 

This assignment goal is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008.
The data files used are PM2.5 Emissions Data (summarySCC_PM25.rds) and Source Classification Code Table (Source_Classification_Code.rds). The data periods are for 1992, 2002, 2005 and 2008. 

PM2.5 Emissions Data (summarySCC_PM25.rds) contains:
•	fips: A five-digit number (represented as a string) indicating the U.S. county
•	SCC: The name of the source as indicated by a digit string (see source code classification table)
•	Pollutant: A string indicating the pollutant
•	Emissions: Amount of PM2.5 emitted, in tons
•	type: The type of source (point, non-point, on-road, or non-road)
•	year: The year of emissions recorded
Source Classification Code Table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.
Code to read the 2 files:
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
There are a total of 6 questions, as follows, and to plot the relevant charts to answers the questions accordingly.
1.	Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
2.	Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
3.	Of the four types of sources indicated by the \color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
4.	Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
5.	How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
6.	Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

Each R script and the graphs are saved in Plot1.R, Plot1.png; Plot2.R, Plot2.png; Plot3.R, Plot3.png; Plot4.R, Plot4.png; Plot5.R, Plot5.png and Plot6.R, Plot6.png respectively.
