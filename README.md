# Binomial-Co-occurrence-Assessment

The R-script implements a means for statistically assessing the degree of co-occurrence between classes within a dataset based on an idea origially suggested by James Allison at BYU and published by Keith Kintigh in 2006. I have implemented this measure of co-occurrence C as:

C = (o-Np)/sqrt(Np(1-p))
 
o = the observed number of co-occurrences between artifact classes a and b
N = the total number of assemblages
p = the expected proportion of co-occurrences for artifact classes a and b defined as the expected proportion of occurrences for class a multiplied by the expected proportion of occurrences for artifact class b 

This measure provides an index of the number of co-occurrences observed in relation to the number that would be expected by chance given the overall frequency of each artifact class. This measure approximates a Z-score such that the absolute values can be interpreted in standard deviation units above and below 0. 
