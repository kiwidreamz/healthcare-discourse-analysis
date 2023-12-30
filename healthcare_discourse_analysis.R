data <- readLines("D:/Documents/RStudio Files/Research/presidential_debate_healthcare.txt")
tail(data)

library(sentimentr)
library(ggplot2)
library(wordcloud)
library(tm)

# Splitting into segments based on speaker identification
speaker_pattern <- "(BIDEN|TRUMP|WALLACE):"
segments <- unlist(strsplit(data, paste0("(?<=\\.)\\s*(?=", speaker_pattern, ")", "|(?<=\\.)\\s+(?=", speaker_pattern, ")"), perl = TRUE))
segments <- segments[!grepl("(LAUGHTER|CROSSTALK|APPLAUSE)", segments)]
tail(segments)

biden_sentences <- character(0)
trump_sentences <- character(0)
wallace_sentences <- character(0)


# Extracting separate sentences for each speaker
for (segment in segments) {
  if (grepl("BIDEN:", segment)) {
    biden_sentences <- c(biden_sentences, segment)
  } else if (grepl("TRUMP:", segment)) {
    trump_sentences <- c(trump_sentences, segment)
  } else if (grepl("WALLACE:", segment)) {
    wallace_sentences <- c(wallace_sentences, segment)
  }
}

head(trump_sentences)

# Performing sentiment analysis for each speaker's segments
biden_sentiment <- sentiment_by(biden_sentences)
trump_sentiment <- sentiment_by(trump_sentences)

print(biden_sentiment)
print(trump_sentiment)

# Density plot
ggplot() +
  geom_density(data = trump_sentiment, aes(x = ave_sentiment, color = "Trump"), size = 0.5) +
  geom_density(data = biden_sentiment, aes(x = ave_sentiment, color = "Biden"), size = 0.5) +
  scale_color_manual(values = c("Trump" = "red2", "Biden" = "royalblue2")) +  # Specify colors and labels
  labs(title = "Sentiment Density Plot - Trump vs. Biden",
       x = "Average Sentiment",
       y = "Density") +
  theme(legend.position = "top")


# Convert all text to lowercase, Remove punctuation, stop words, speaker mentions
trump_words <- tolower(trump_sentences)
trump_words <- gsub("[[:punct:]]", "", trump_words)
trump_words <- removeWords(trump_words, stopwords("en"))
trump_words <- gsub("\\btrump\\b", "", trump_words)

biden_words <- tolower(biden_sentences)
biden_words <- gsub("[[:punct:]]", "", biden_words)
biden_words <- removeWords(biden_words, stopwords("en"))
biden_words <- gsub("\\bbiden\\b", "", biden_words)

# Collapse the cleaned sentences into one string
trump_words <- paste(trump_words, collapse = " ")
biden_words <- paste(biden_words, collapse = " ")
cat(biden_words)
cat(trump_words)

# Word Cloud
wordcloud(words = unlist(strsplit(trump_words, "\\s+")), min.freq = 3, scale=c(3.5,0.5))
wordcloud(words = unlist(strsplit(biden_words, "\\s+")), min.freq = 3, scale=c(3.5,0.5))

# Word Counts
trump_freq <- table(unlist(strsplit(trump_words, " ")))
trump_freq <- trump_freq[names(trump_freq) != ""]
trump_freq <- sort(trump_freq, decreasing = TRUE)

trump_freq_top <- head(trump_freq, 49)
#trump_freq_top <- trump_freq_top[-1]

trump_freq_top <- rev(trump_freq_top)
color_palette1 <- colorRampPalette(c("turquoise", "sienna1"))(length(trump_freq_top))
barplot(trump_freq_top, col = color_palette1, main = "Trump Top Words", ylab = "Words", xlab = "Frequency", las = 2, cex.names = 0.7, horiz = TRUE)

print(biden_freq)

biden_freq <- table(unlist(strsplit(biden_words, " ")))
biden_freq <- biden_freq[names(biden_freq) != ""]
biden_freq <- sort(biden_freq, decreasing = TRUE)

biden_freq_top <- head(biden_freq, 49)

biden_freq_top <- rev(biden_freq_top)
color_palette2 <- colorRampPalette(c("plum3", "olivedrab2"))(length(biden_freq_top))
barplot(biden_freq_top, col = color_palette2, main = "Biden Top Words", ylab = "Words", xlab = "Frequency", las = 2, cex.names = 0.7, horiz = TRUE)
