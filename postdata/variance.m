%%This is the programme to find the variance of a multi-dimensional
%%dataset. The dataset is provided in the form of a 2D matrix. Different
%%rows are different variables and in a row, the columns r the points in
%%each dimension. The output from the programme is the variance (a single
%%number)
%%
%% AKM Oct 2006

function[v] = variance(D);

[m,n] = size(D); %%m data points, each in a n-dimensional space

v = 0; %%intialise

mm = mean(D); %%mean
for i = 1:m,
    tmp = D(i,:) - mm;
    v = v + tmp*tmp';
end;

v = v / m;