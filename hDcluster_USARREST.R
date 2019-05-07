library(tidyverse) # data manipulation 
library(cluster) # clustering algorithms
library(factoextra) # clustring visualization 
library(dplyr)
library(dendextend) # for comparing two dendrograms
# dataset
us <- USArrests

df<- USArrests
df<- na.omit(df)
df<- scale(df)
head(df)

#Agglomerative hierarchical clustring 
# Dissmilarity matrix 
# to calculate distance we used euclidean, manhattan , minkowski
d <- dist(df, method="euclidean")

#Hierarchical clustering using complete linkage 
# to select observation for cluster we used single, complete, average, war
hc1 <- hclust(d, method="complete")


# Agglomerative coefficient
# the agglomerative coefficient, 
#which measures the amount clusterig structure found
#(values closer to 1 suggest strong clustering structure).
# Compute with agnes
hc2 <- agnes(df, method="complete")
hc2$ac
# plot the obtained dendrogram
plot(hc1, cex=0.6, hang=-1,main="Dendrogram of agnes")

#cut tree into 4 groups
grp <- cutree(hc1, k=4)
us$cluster<-grp


###########################################################

# Divisie Hierarchical clustering
# compute divisive hierarchical clustering 
us <- USArrests


df <- USArrests
df <- na.omit(df)
df <- scale(df)

hc4 <- diana(df)

# Divise coefficient: amount of clustering structure found 
hc4$dc
# [1] 0.8514345

# to calculate distance we used euclidean, manhattan, minkowski
d <- dist(df, method = "euclidean")

#ward method
hc5 <- hclust(d, method = "ward.D2")

# cut tree into 4 groups
sub_grp <- cutree(hc5, k=4)

# number of memebers in each cluster
table(sub_grp)

USArrests %>%
  mutate(cluster = sub_grp) %>%
  head
  
plot(hc5, cex= 0.6)
rect.hclust(hc5, k=4, border = 2:5)

fviz_cluster(list(data=df, cluster=sub_grp))














