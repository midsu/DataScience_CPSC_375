library(tidytext)
library(tidyverse)
text <- c("Because I could not stop for Death -",
"He kindly stopped for me -",
"The Carriage held but just Ourselves -",
"and Immortality")
text_df <- tibble(line = 1:4, text = text)
text_df
text_df %>% unnest_tokens(input=text, output="word")
help("unnest_tokens")
text_df %>% unnest_tokens(input=text, output="word") %>% count(word)
library(wordcloud)
wordcloud(c("Hello", "how", "are", "you"), c(50,40,20,40))
?wordcloud

# class on 4/26/2022
wordcounts <- text_df %>% unnest_tokens(input=text, output="word") %>% count(word)
wordcounts
stop_words
stop_words %>% view()
wordcounts %>% anti_join(stop_words)

csuf <- read_csv("hashcsufnew.csv")
csuf_df <- csuf %>% 
  select(text) %>% 
  unnest_tokens(input=text, output="word", token="tweets") %>% 
  count(word) %>% 
  arrange(-n) %>% 
  filter(n > 200) %>% 
  anti_join(stop_words)
wordcloud(csuf_df$word, csuf_df$n)

wordStem()
library(SnowballC)
wordStem("learning")
wordStem("learns")
wordStem("learned")
wordStem("family")
wordStem("families")

# class on 4/28/2022
log(1000000/1)
log(1000000/100)
library(tidyverse)
library(tidytext)
mydata <- tibble(document=1:3, text=c("see spot", "see spot run", "run spot run"))
mydata
mydata %>% unnest_tokens(input = text, output = "word")
mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word)
mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word) %>% bind_tf_idf(term=word, document = document, n=n)
mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word) %>% bind_tf_idf(term=word, document = document, n=n) %>% select(document, word, tf_idf)
mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word) %>% bind_tf_idf(term=word, document = document, n=n) %>% select(document, word, tf_idf) %>% pivot_wider(names_from = document, values_from = tf_idf)
mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word) %>% bind_tf_idf(term=word, document = document, n=n) %>% select(document, word, tf_idf) %>% pivot_wider(names_from = document, values_from = tf_idf, values_fill = list(tf_idf=0))
myvectoes <- mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word) %>% bind_tf_idf(term=word, document = document, n=n) %>% select(document, word, tf_idf) %>% pivot_wider(names_from = document, values_from = tf_idf, values_fill = list(tf_idf=0))
myvectors <- mydata %>% unnest_tokens(input = text, output = "word") %>% count(document, word) %>% bind_tf_idf(term=word, document = document, n=n) %>% select(document, word, tf_idf) %>% pivot_wider(names_from = document, values_from = tf_idf, values_fill = list(tf_idf=0))
myvectors
myvectors[[2]]
myvectors[[3]]
myvectors$`1`
vec1 <- myvectors$`1`
vec1 / sqrt(sum((vec1^2)))
vec2 / sqrt(sum((vec2^2)))
vec2 <- myvectors$`2`
vec2 / sqrt(sum((vec2^2)))
vec3 <- myvectors$`3`
vec3 / sqrt(sum((vec3^2)))
vec3.norm <- vec3 / sqrt(sum((vec3^2)))
vec2.norm <- vec2 / sqrt(sum((vec2^2)))
sum(vec3.norm*vec2.norm)
vec1.norm <- vec1 / sqrt(sum((vec1^2)))
sum(vec1.norm*vec2.norm)
sum(vec1.norm*vec3.norm)
