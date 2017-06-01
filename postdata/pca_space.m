%%convert a data cluster into their PCA space
%%i/p is data points (in rows; i.e. NxM matirx mean N datapoints, each of
%%size 1xM).
%%AKM Nov 2006
function[pc_dom] = pca_space(D,n); %D is data matrix and n is dimension of PC-space

X = D';
clear D;
[M,N] = size(X);                 %N variables with M observations each, i.e. M HRR data sets, with N datapoints in each HRR
%ZERO CENTERING THE DATA
c = mean(X);              %vector with average of each range bin
%c = c';                    %turning into a column vector
for i = 1:N,
    X(:,i) = X(:,i) - c(i);
end;
%normalise
cc = max(max(X));
X = X/cc;
Q = (1/M)*X'*X;                  %covariance matrix

%FINDING THE CORRELATION MATRIX
% for i=1:N,
%     va(i)=Q(i,i);       %the vector containing the variances
% end;
% va = sqrt(va);
%MAKING STANDARDISED VARIABLES
%for i=1:N,
%    X(:,i)=X(:,i) / va(i);
%end;
%clear Q;
%Q = (1/M)*X*X';   %correlation matrix
  
[V,D] = eigs(Q,n);         %getting largest n eigne vectors and eigen values
pc_dom = X*V;               %PCA values of X projected to n-D
pc_dom = pc_dom';