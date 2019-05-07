# Hierarchical-clustering-in-R
these models based on the theory that the data points closer in data space exhibit more similarity to each other than data point lying farther away.  So basically, hierarchical clustering is separating the data into different groups based on measure of similarity.

What is agglomerative and divisive cluster?

Agglomerative cluster- 

Agglomerative cluster begins with each element as a separate cluster and merge them into larger clusters.

1.	it is known as bottom-up approach 
2.	We terminate when we are left with only one cluster
3.	Each data point is a cluster of its own
4.	We try to find least distance between the two data points/cluster.
5.	The tow nearest cluster/data points merged together.


Divisive clustering – 

1.	Divisive clustering approach begins with the whole set and proceeds to divide it into smaller cluster.
2.	it is known as top – down approach 
3.	In this we start with all of the objects in the same cluster.
