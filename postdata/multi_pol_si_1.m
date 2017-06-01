%%These are a series of programmes to deal with the GTRI data, to see their
%%sepratibity in fully polarimetric domain. The input are two sets of data
%%clusters from HH, HV, VH and VV polarisations. Each set is a matrix of
%%image clips. In these programmes, differe multipolar information fusion
%%approaches are applied to map the original multipolar data to a different
%%space, and find the spearatibility indices in that space
%%In the present programme:
%%The image pixels are added without the phase (abs-only)
%%AKM NOV 2006

function[csi,nsi] = multi_pol_si_1(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv); %%the multipolar data of two clusters are
                                                                                            %%the input and the 2 indices are the o/p
                                                                                            
a = abs(ahh) + abs(ahv) + abs(avh) + abs(avv);
b = abs(bhh) + abs(bhv) + abs(bvh) + abs(bvv);

csi = class_para(a,b);
nsi = NN_sep_ind(a,b);