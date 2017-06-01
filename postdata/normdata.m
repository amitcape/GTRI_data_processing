%%This programme will normalize the dataset given to it. Given is a 2D
%%matrix. Different rows are different variables and in a row, the columns 
%%r the points in each dimension. Output will be the dataset (a 2D matrix),
%%whose variance would be unity
%%AKM Oct 2006

function[Dnorm] = normdata(D);

[m,n] = size(D);
v = variance(D);
p = sqrt(v); %%std. dev.
Dnorm = D ./ p;