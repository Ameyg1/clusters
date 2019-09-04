d=iris
boxplot(d)
d$Species=as.numeric(as.factor(d$Species))
d
scaled=scale(d)
cl=kmeans(scaled,centers = 3)
ipca=prcomp(scaled)
plot(ipca$x[,1],ipca$x[,2],col=cl$cluster,pch=19)
table(cl$cluster,d$Species)
