%%This is the programme to find the distance between two data clusters (data points
%%in a multi-dimensional space). Input is 2 datapoint clusters
%%first we make it into one set, and normalise it (make variance 1)
%%Then we separate them again, and find the mean values
%%Next we find the distance between the means and this
%%Output here is a set of two figures of merit, which show to someextent
%%the classifiablity of the two classes/clusters concerned
%%
%%MOD. 6th Nov 2006: This modified prog. of the original class_para, will
%%calculate the Gaussian separatibility index in the PCA domain (No. of PCs can be changed!)
%%
%% AKM Oct 2006

function[par] = class_para_pca(a,b,pc);
a = abs(a); b = abs(b);
[m,n,p] = size(a);
a = reshape(a,m,n*p);
[m,n,p] = size(b);
b = reshape(b,m,n*p); %%make the variables into 1D vectors

%%turn into PC space
a = pca_space(a,pc);
b = pca_space(b,pc);

% data = [a ; b]; %all the data made into one
% clear a b;
% dataN = normdata(data); %normalise or make the variance of the total data 1
% 
% an = dataN(1:m,:); bn = dataN((m+1):(2*m),:);  %%separate them again

% man = mean(an); mbn = mean(bn); %%mean values or centres of the clusters
ma = mean(a); mb = mean(b); %%mean values or centres of the clusters

c = ma - mb;

dist = sqrt(c*c');
sig1 = sqrt(variance(a));
sig2 = sqrt(variance(b));  
% par(1) = sig1/dist;
% par(2) = sig2/dist;
par = dist / (sig1+sig2);