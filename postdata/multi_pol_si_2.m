%%These are a series of programmes to deal with the GTRI data, to see their
%%sepratibity in fully polarimetric domain. The input are two sets of data
%%clusters from HH, HV, VH and VV polarisations. Each set is a matrix of
%%image clips. In these programmes, differe multipolar information fusion
%%approaches are applied to map the original multipolar data to a different
%%space, and find the spearatibility indices in that space
%%In the present programme:
%%We convert the 4D pol. data to 2D by PCA
%%
%%AKM NOV 2006

function[csi,nsi] = multi_pol_si_2(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv); %%the multipolar data of two clusters are
                                                                                            %%the input and the 2 indices are the o/p
                                                                                            
[m,n,r] = size(ahh);
a = [reshape(ahh,1,(m*n*r)); reshape(ahv,1,(m*n*r)); reshape(avh,1,(m*n*r)); reshape(avv,1,(m*n*r))]; %converting to 4xN size data
a = pca_space(a,2); %use PCA and convert to 2xN data

tmp1 = reshape(a(1,:),m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp2 = reshape(a(2,:),m,(n*r));

a = [tmp1 tmp2]; %this is of size MxN1,

[m,n,r] = size(bhh);
b = [reshape(bhh,1,(m*n*r)); reshape(bhv,1,(m*n*r)); reshape(bvh,1,(m*n*r)); reshape(bvv,1,(m*n*r))];
b = pca_space(b,2);

tmp1 = reshape(b(1,:),m,(n*r));
tmp2 = reshape(b(2,:),m,(n*r));

b = [tmp1 tmp2];


csi = class_para_pol(a,b);
nsi = NN_sep_ind_pol(a,b);