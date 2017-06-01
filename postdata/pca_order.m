%program to see how many PCs are needed to represent a data matrix; here
%input is the data matrix, for which the PCs are wanted, in specific the
%HRR data set arranged in matrix form, with each column representin one HRR
%vector. And as output, is plotted the diagram of %age of energy contained
%in first n PCs versus n
%AKM AUG 04
function[per] = pca_order(X,n) %give HRR matrix here & n the order of PCA

i = 1; %index representing number of PCs to be taken
[X_p,A,L,eig] = pca_hrr(X,i,0,0);
clear X-p;
per(i) = eig;
%PRESS index
L = L.^(0.5);
for j=1:i,
    U(:,j)=(1/L(j,j))*X*A(:,j);
end;
 
XX = U*L*A';
PRESS(i)=sum(sum((X - XX).^2));

for i=2:n,
    [X_p,A,L,eig] = pca_hrr(X,i,0,0);
    clear X_p;
    %THE VALUE OF PERCENTAGE OF VARIANCE ACCOUNTED FOR BY i PCs
    per(i) = eig;
    %PRESS index
    L = L.^(0.5);
    for j=1:i,
        U(:,j)=(1/L(j,j))*X*A(:,j);
    end;
    XX = U*L*A';
    PRESS(i)=sum(sum((X - XX).^2));
    R(i) = PRESS(i)/PRESS(i-1);
    W(i) = (PRESS(i-1) - PRESS(i))/PRESS(i);
end;

%plot it
figure
grid
plot(per);
xlabel('no of PCs taken (n)')
ylabel('percentage of energy in n PCs (in percent)')
title('no. of PCs versus percentage of energy accounted for')
figure
grid
plot(abs(R))
title('the R index')
figure
grid
plot(abs(PRESS))
title('the PRESS index')
figure
grid
plot(abs(W))
title('the W index')