### WALMART SENTIMENTAL ANALYSIS ###

library(syuzhet)

### READ FILE ###
text_df1<-read.csv("Ringreview.csv",stringsAsFactors = FALSE)

### RESTORED DATA IN CHARACTER FORMAT ###
review1<-as.character(text_df1$Review.Text)

### OBTAIN SENTIMENT SCORES ###
get_nrc_sentiment('happy')
get_nrc_sentiment('abuse')

### STORE THIS DATA SET INTO NEW VARIABLE ###
s1<-get_nrc_sentiment(review1)

### COMBINE TEXT AND SENTIMENT COLUMNS ###
review_sentiment1<-cbind(text_df1$Review.Text,s1)

### BAR PLOT FOR SENTIMENTS ###
barplot(colSums(s1),col = rainbow(10),ylab = 'Count',main = 'Walmart Review Of Hug Rings')
