%%These are a series of programmes to deal with the GTRI data, to see their
%%sepratibity in fully polarimetric domain. The input are two sets of data
%%clusters from HH, HV, VH and VV polarisations. Each set is a matrix of
%%image clips. In these programmes, differe multipolar information fusion
%%approaches are applied to map the original multipolar data to a different
%%space, and find the spearatibility indices in that space
%%In the present programme:
%%We use the K-matrix elements
%%
%%AKM NOV 2006

function[csi,nsi] = multi_pol_si_7(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv); %%the multipolar data of two clusters are
                                                                                            %%the input and the 2 indices are the o/p
                                                                                            
[m,n,r] = size(ahh);

[a1,a2,a3,a4,a5,a6,a7,a8,a9] = K_matrix_formation(ahh,ahv,avh,avv);

tmp1 = reshape(a1,m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp2 = reshape(a2,m,(n*r));
tmp3 = reshape(a3,m,(n*r));
tmp4 = reshape(a4,m,(n*r));
tmp5 = reshape(a5,m,(n*r));
tmp6 = reshape(a6,m,(n*r));
tmp7 = reshape(a7,m,(n*r));
tmp8 = reshape(a8,m,(n*r));
tmp9 = reshape(a9,m,(n*r));

a = [tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9]; %this is of size MxN1,

[m,n,r] = size(bhh);
[b1,b2,b3,b4,b5,b6,b7,b8,b9] = K_matrix_formation(bhh,bhv,bvh,bvv);

tmp1 = reshape(b1,m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp2 = reshape(b2,m,(n*r));
tmp3 = reshape(b3,m,(n*r));
tmp4 = reshape(b4,m,(n*r));
tmp5 = reshape(b5,m,(n*r));
tmp6 = reshape(b6,m,(n*r));
tmp7 = reshape(b7,m,(n*r));
tmp8 = reshape(b8,m,(n*r));
tmp9 = reshape(b9,m,(n*r));

b = [tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9]; %this is of size MxN1,

csi = class_para_pol(a,b);
nsi = NN_sep_ind_pol(a,b);