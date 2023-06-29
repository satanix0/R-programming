install.packages("tm") # text mining
intsall.packages("SnowballC")
intsall.packages("wordcloud") # world-Cloud Generator

library(tm)
library(SnowballC)
library(wordcloud)



getwd() # 1
setwd("E://Education//Semesters/Semester 6//INT232 - R Programming//Practicals")
spam <- read.csv("datasets\\spam.csv") # 2

View(spam)

str(spam) # 3
spam$v1 <- factor(spam$v1) # 4 #convert it into a factor, repeated values

str(spam) # 5

table(spam$v1)

# SMS messages are strings of text composed of words, spaces, numbers,
# and punctuation.One needs to consider how to remove numbers and
# punctuation; handle uninteresting words such as and, but, and or; and
# how to break apart sentences into individual words. Thankfully,
# this functionality has been provided by the members
# of the R community in a text mining package titled tm.

library(tm) # 7

# corpus is a collection of text documents. here collection of SMS

sms_corpus <- VCorpus(VectorSource(spam$v2)) # 8
# Vcorpus() is used for volatile corpus as it is stored in memory
# instead of disk already data dataset into R so use VectorSource( )
# to create a source object from the existing vector
print(sms_corpus) # 9
# vignette("tm")
# the VCorpus() function offers functionality to import text from
# sources such as PDFs and Microsoft Word files.

inspect(sms_corpus[1:2]) # 10 #summary of 1st and 2nd SMS in corpus


as.character(sms_corpus[[1]]) # read 1st message in character form

lapply(sms_corpus[1:2], as.character) # read full 1st and 2nd SMS in character


# The tm_map() function provides a method to apply a transformation (also known
# as mapping) to a tm corpus
# tolower() function that returns a lowercase version of text strings.
# In order to apply this function to the corpus, we need to use the tm wrapper
# function content_transformer() to treat tolower() as a
# transformation function that can be used to access the corpus.
sms_corpus_clean <- tm_map(sms_corpus, content_transformer(tolower))
as.character(sms_corpus[[1]]) # inspect the first SMS
as.character(sms_corpus_clean[[1]]) # compare it to 1st stored in corpus
# remove all the numbers from the corpus
sms_corpus_clean <- tm_map(sms_corpus, tolower)
# remove stop words such as to. and, but, or
sms_corpus_clean <- tm_map(sms_corpus_clean, removeWords, stopwords())
# eliminate any punctuation from the text messages
sms_corpus_clean <- tm_map(sms_corpus_clean, removePunctuation)
# example
removePunctuation("hello...world")
# Another common standardization for text data involves reducing words to their root
# form in a process called stemming.learned, learning, and learns, and strips the suffix in order to transform them into the base
# form, learn.
# wordStem() function, which for a character vector, returns the same vector of terms in its root form.
wordStem(c("learn", "learned", "learning", "learns"))
# stemming to full document
sms_corpus_clean <- tm_map(sms_corpus_clean, stemDocument)
# The final step in our text cleanup process is to remove additional whitespace
sms_corpus_clean <- tm_map(sms_corpus_clean, stripWhitespace)
as.character(sms_corpus[[1]])
as.character(sms_corpus_clean[[1]])





# as.character(sms_corpus[[1]])
# as.character(sms_corpus_clean[1:3])
# splitting text documents into words
# The DocumentTermMatrix() function will take a corpus and create
# a data structure called a Document Term Matrix (DTM) in which rows indicate
# documents (SMS messages) and columns indicate terms (words).



sms_dtm <- DocumentTermMatrix(sms_corpus_clean)
sms_dtm2 <- DocumentTermMatrix(sms_corpus, control = list(
    tolower = TRUE, removeNumbers = TRUE,
    stopwords = TRUE,
    removePunctuation = TRUE,
    stemming = TRUE
))
sms_dtm
sms_dtm2
sms_dtm_train <- sms_dtm[1:4169, ]
sms_dtm_test <- sms_dtm[4170:5559, ]
sms_train_labels <- spam[1:4169, ]$v1 # labels $v1
sms_test_labels <- spam[4170:5559, ]$v1
# compare the proportion of spam in trai and test data
prop.table(table(sms_train_labels))
prop.table(table(sms_test_labels))
# A word cloud is a way to visually depict the frequency at which words appear in
# text data.
# This will create a word cloud from our prepared SMS corpus. Since we specified
# random.order = FALSE, the cloud will be arranged in a nonrandom order with higher
# frequency words placed closer to the center. If we do not specify random.order, the
# cloud would be arranged randomly by default. The min.freq parameter specifies the
# number of times a word must appear in the corpus before it will be displayed in the
# cloud. Since a frequency of 50 is about 1 percent of the corpus, this means that a word
# must be found in at least 1 percent of the SMS messages to be included in the cloud.
wordcloud(sms_corpus_clean, min.freq = 20, random.order = FALSE)
spam1 <- subset(spam, type == "spam")
ham <- subset(spam, type == "ham")
