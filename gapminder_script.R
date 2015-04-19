##This script explores the gapminder data
##The advantage of dplyr is that we can use pipes

#install.packages("dplyr", dependencies=TRUE)
library("dplyr")
#read in .txv file
gap.in <- read.table("output//combined_gapMinder.tsv", sep="\t", header=TRUE)
head(gap.in)

#making a pipe, read, filter, select, group, summarize
gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country)%>%
  summarize(min=min(pop))

# Calculate mean population per continent per year for all years prior to 1990.
gap.in %>%
  filter(year < 1990) %>%
  select(country, year, pop, continent) %>% #lksjfasl;kfj
  group_by(continent, year)%>%
  summarize(mean=mean(pop))%>%
  as.data.frame() -> data.out


###
#install.packages("tidyr", dependencies=TRUE)
library("tidyr")
attach(iris)
iris.long<-gather(iris, "Measurement", "Value", 1:4)

install.packages("rmarkdown")
