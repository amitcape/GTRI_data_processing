%Program to generate the PCA analysis of an observation matrix; The rows
%of the matrix are the consecutive HRR data vectors in k or spatial domain.
%So that each column represents one variable's measurements across the
%aspect angle.
%Also give the order of PCA desired.
%AKM JUN 04

function[X_p,V,D,eignp] = pca_hrr(X,n,fig,mani) %give HRR matrix here & n the order of PCA

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
for i=1:N,
    va(i)=Q(i,i);       %the vector containing the variances
end;
va = sqrt(va);
%MAKING STANDARDISED VARIABLES
%for i=1:N,
%    X(:,i)=X(:,i) / va(i);
%end;
%clear Q;
%Q = (1/M)*X*X';   %correlation matrix
    
[v,D]=eig(Q);
tp = trace((D));%.^2)
clear V;
clear D;
[V,D] = eigs(Q,n);         %getting largest n eigne vectors and eigen values

%putting the eigne values in vector lam
for i=1:n,
    lam(i) = D(i,i);
end;

%figure
%plot(lam);
%title('First few eigen values');
X_p = X*V;               %PCA values of X projected to n-D
if (mani==1)
    figure;
    plot3(abs(X_p(:,1)),abs(X_p(:,2)),abs(X_p(:,3)),'-*');   %3-D plot of data in first 3 PC-dimension
    grid
    title('data as seen in first 3 PC-domain')
end;
%PLOTTING INDIVIDUAL PCs
if(fig == 1)
figure
for i=1:n,
    subplot(n,2,(2*i-1)),plot(abs(X_p(:,i)));
    title('magnitude');
    subplot(n,2,(2*i)),plot(angle(X_p(:,i)));
    title('phase');
end;
end;
%power analysis of first m eigen values
ep = 0;
ep = sum(lam);
%for i=1:n,
 %   ep = ep + abs(lam(i));%.^2;
 %end;
%ep = trace(D.^2);
eignp = abs((ep/tp)*100)