%%This is the programme to find the Mahalonobis distance between two data clusters
%%Here the input are 2 matrices with data points (NxM data mean N data points of dimension M)
%%The Mahalonobis distance is (mu1 - mu2)' (inv(sigma)) (mu1 - mu2)
%%
%% AKM Oct 2006

function[dist] = maha_dist(a,b);

com = [a ; b]; %%the complete dataset

c = a - b;

dist = sqrt(c*c');