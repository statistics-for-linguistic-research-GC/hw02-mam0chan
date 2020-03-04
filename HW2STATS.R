#1 Binomial Test

x <- 501
n <- 501 + 1859
binom.test(x,n,p=0.5)


#When alpha = 0.5, its 95% Confidence Intervals. 
#The test is significant because p < alpha. This rejects the null hypothesis that
#they are equally probable. The significance are...

x <- x1
n <- x1+x2
binom.test(x,n,p=0.5)

x <- x2
binom.test(x,n,p=0.5)



#2 McNemar's Test


#How many times did x sytem get it right, and y get it wrong? And vice versa
#Null is two systems are equally good
#McNemar test can only compare two symptoms



c <- read.table(file = 'PTB.tsv', header = TRUE)
Stanford.correct <- c$gold.tag == c$Stanford.tag
NLP4J.correct <- c$gold.tag == c$NLP4J.tag

x1 <- sum(Stanford.correct & !NLP4J.correct)
x2 <- sum(NLP4J.correct & !Stanford.correct)

#After I get my numbers, I will set x to an x1 and n to x1 + x2
#run binom test

#Then run x as x2 and do again
#(x,n,p=0.5)

#if a .5 both significant, if at 0.5 both not significant.
