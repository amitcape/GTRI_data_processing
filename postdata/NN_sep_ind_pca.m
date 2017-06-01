%%This programme calculates the classifiability of two clusters of data
%%points, in a nearest neighbour (NN) sense. In NN classification, no fixed
%%shape of the cluster boundry is assumed. Hence to see how separable are 2
%%clusters in a NN sense, its very difficult (unless the boundry is linear
%%or we use some kernel function to make it linear). In the current
%%programme, each point from a class is taken, and its nearest neighbour is
%%found from both class 1 and class 2. If the point belogs to class 1, then there will be
%%more points in calss 1 nearer to this point. If the nearest point from class 2
%%is closer to the test point, than the kth nearest point from class 1, then k is an 
%%indication of the separbility between the 2 classes.
%%Let there be M1 points from class 1 and M2 from class 2. This algorithm
%%can be termed as the VETO-ALGORITHM. 
%%If test point belongs to class 1, then let the nearest point to it from
%%class 2 be at distance d. Ideally, all points in cluster 1 shd be nearer
%%to the tst point than this distance. Hence if the nth nearest point (to
%%the tst point) frm the cluster 1, is d or more distance away frm the tst
%%point, then "n" is a measure of how separable are the classes. This is
%%repeated for all the points from class 1 and class 2. They are
%%normalised, s.t. if the clusters are completely separable, then the index
%%is "1" and if its completly in separable, then the index is "0". 
%%
%%IMP: the index is not linear, nor quantitaive, its just for comparision
%%sake.
%%
%%MOD. 6th Nov 2006: This modified prog. of the original NN_sep_ind, will
%%calculate the NN index in the PCA domain (No. of PCs can be changed!)
%%
%%AKM Nov 2006
function[si,c] = NN_sep_ind_pca(a1,b1,pc);
a1 = abs(a1); b1 = abs(b1);
[m1,n1,p1] = size(a1);
[m2,n2,p2] = size(b1);
M = m1+m2;  %%total no. of data points

a1 = reshape(a1,m1,n1*p1); %%resized, s.t. the data points r 1D vectors of
b1 = reshape(b1,m2,n2*p2); %%image pixels

%%turn into PC space
a = pca_space(a1,pc);
b = pca_space(b1,pc);

 [m1,n1,p1] = size(a);
 [m2,n2,p2] = size(b);

si = 0; %%index initialised to 0

for i = 1:m1,
    ref = a(i,:);
    for j=1:m2,
        tmp = b(j,:);
        tmp = ref - tmp;
        dist(j) = tmp*tmp';
    end;
    dist = sort(dist);
    nn = dist(1) ;%%nearest neighbour from the other class cluster
    for j=1:m1,
        tmp = a(j,:);
        tmp = ref - tmp;
        dist(j) = tmp*tmp';
    end;
    dist = sort(dist);
    ind = 1;  %%initialise to the ideal case of no intersection
    for j = 1:m1,
        if (dist(j) >= nn),
            ind = (j-1)/m1 ;
            break;
        end;
    end;
    si = si + ind;
end;

for i = 1:m2,
    ref = b(i,:);
    for j=1:m1,
        tmp = a(j,:);
        tmp = ref - tmp;
        dist(j) = tmp*tmp';
    end;
    dist = sort(dist);
    dist1 = dist;
    nn = dist(1); %%nearest neighbour from the other class cluster
    for j=1:m2,
        tmp = b(j,:);
        tmp = ref - tmp;
        dist(j) = tmp*tmp';
    end;
    dist = sort(dist);
    ind = 1;  %%initialise to the ideal case of no intersection
    for j = 1:m2,
        if (dist(j) >= nn),
            ind = (j-1) / m2;
            break;
        end;
        
    end;
    si = si + ind;
end;
%plot(dist);hold on; plot(dist1);
si = si / (m1+m2);