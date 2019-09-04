d<-iris
d<-d[-5]
d.dist=dist(d)
clus<-hclust(d.dist)
plot(clus,main="Complete Linkage")
clusters<-cutree(clus,3)
table(iris$Species,clusters)
