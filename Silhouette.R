# шаг-1. вчитываем таблицу. делаем из нее датафрейм.
MarianaTrench_DF <- read.csv("Morphology.csv", header=TRUE, sep = ",")
MarianaTrench_DF <- na.omit(MarianaTrench_DF) 
row.has.na <- apply(MarianaTrench_DF, 1, function(x){any(is.na(x))}) 
sum(row.has.na) 
head(MarianaTrench_DF)

# шаг-2. делаем график "силуэт" библиотекой cluster
library(cluster)
pr5 <- pam(MarianaTrench_DF, 6)
str(si <- silhouette(pr5))
#plot(si, col = c("lavender", "lightgoldenrod1", "darkseagreen1", "orchid1", "skyblue1", "lightslateblue"))
#plot(si, col = c("aquamarine", "aquamarine1", "aquamarine2", "aquamarine3", "aquamarine4", "aquamarine4"))
plot(si, col = c("thistle", "thistle1", "thistle2", "thistle3", "thistle4", "slategray4"))
