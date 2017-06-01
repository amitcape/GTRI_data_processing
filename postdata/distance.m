%%This is the programme to find the distance between two data clusters (data points
%%in a multi-dimensional space). Input is 2 datapoint clusters
%%first we make it into one set, and normalise it (make variance 1)
%%Then we separate them again, and find the mean values
%%Next we find the distance between the means and this
%%is the output, which is a number
%%
%% AKM Oct 2006

function[dist] = distance(a,b);

[m,n] = size(a);
data = [a ; b]; %all the data made into one
clear a b;
dataN = normdata(data); %normalise or make the variance of the total data 1

an = dataN(1:m,:); bn = dataN((m+1):(2*m),:);  %%separate them again

man = mean(an); mbn = mean(bn); %%mean values or centres of the clusters

c = man - mbn;

dist = sqrt(c*c');