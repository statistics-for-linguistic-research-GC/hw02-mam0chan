#1 Binomial Test

#We are looking to test a null hypothesis that states two constructions are similar.
#The first construction is called Prepositional Dative that apears 501 times, and the
#second is called Double Object that appears 1,859 times. We will be using the binomial tets.

x <- 501
n <- 501 + 1859
binom.test(x,n,p=0.5)

#The test is significant because p < alpha. This rejects the null hypothesis that
#states they are equiprobable.


#2 McNemar's Test

d <- read.table('http://wellformedness.com/courses/LING82100/Data/PTB.tsv', header = TRUE)
Stanford.correct <- d$gold.tag == d$Stanford.tag
NLP4J.correct <- d$gold.tag == d$NLP4J.tag

x1 <- sum(Stanford.correct & !NLP4J.correct)
x2 <- sum(NLP4J.correct & !Stanford.correct)

x1
x2

#The number of wins for the Stanford Tagger are 943
#The number of wins for the NLP4J Tagger are 1016

binom.test(min(x1, x2), x1 + x2, p=0.5)

#We do not know if one is significally better, since we cannot reject the null hypothesis
#because P > alpha.

