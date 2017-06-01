%%These are a series of programmes to deal with the GTRI data, to see their
%%sepratibity in fully polarimetric domain. The input are two sets of data
%%clusters from HH, HV, VH and VV polarisations. Each set is a matrix of
%%image clips. In these programmes, differe multipolar information fusion
%%approaches are applied to map the original multipolar data to a different
%%space, and find the spearatibility indices in that space
%%In the present programme:
%%We just take all the data from all polarisation, as such
%%
%%AKM NOV 2006

function[csi,nsi] = multi_pol_si_3(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv); %%the multipolar data of two clusters are
                                                                                            %%the input and the 2 indices are the o/p
                                                                                            
[m,n,r] = size(ahh);

tmp1 = reshape(ahh,m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp2 = reshape(ahv,m,(n*r));
tmp3 = reshape(avh,m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp4 = reshape(avv,m,(n*r));

a = [tmp1 tmp2 tmp3 tmp4]; %this is of size MxN1,

[m,n,r] = size(bhh);
tmp1 = reshape(bhh,m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp2 = reshape(bhv,m,(n*r));
tmp3 = reshape(bvh,m,(n*r));   %convert one pol (derived) to MxN M is no. of data points
tmp4 = reshape(bvv,m,(n*r));

b = [tmp1 tmp2 tmp3 tmp4]; %this is of size MxN1,

csi = class_para_pol(a,b);
nsi = NN_sep_ind_pol(a,b);