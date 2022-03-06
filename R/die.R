die1 <- sample(1:6, size = 2000, replace = TRUE)
die1

die2 <- sample(1:6, size = 2000, replace = TRUE)
die2

result =0
data = c()
for (i in 1:2000){
  if(die1[i]+die2[i]==7){
  result <- result + 1
  }
  data[i] <- die1[i] + die2[i]
  print(c(die1[i],die2[i],die1[i] + die2[i],i))
}


print(result)
print(table(data))
names(sort(table(data),decreasing=TRUE)[1])
#เรียงลำดับตารางจากมากไปน้อยให้decreasingคือเรียงค่ามากไว้ตัวแรก[1]
sort(data)
hist(data)
plot(data)
boxplot(data)
mean(data)
median(data)
mode(data)
print(sep="probability of getting a sum of 7 of those 2,000 rolls.",result/2000)

