##This script explores the gapminder data

#read in .txv file
gap.in <- read.table("output//combined_gapMinder.tsv", sep="\t", header=TRUE)
head(gap.in)

#for loops
for (number in 1:10){
  number + 10
} #this give value of length 10

for (number in 1:10){
  print(number + 10)
} # this will print it to the screen

for (number in 1:10){
  number.out <- number + 10
} #number.out will equal 20, because save was inside the loop

#nested for loops
for (row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number,col.number])
  }
}


gap.in[1:10,1:5]
#creating a function called add.me
add.me <- function(x,y){
  x+y
}
#calling the function, giving it x and y
add.me(3,4)
