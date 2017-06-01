n11 = NN_sep_ind([t000_17;t000_15],[t000_17;t000_15]);
n12 = NN_sep_ind([t000_17;t000_15],[t005_17;t005_15]);
n13 = NN_sep_ind([t000_17;t000_15],[t016_17;t016_15]);
n14 = NN_sep_ind([t000_17;t000_15],[t025_17;t025_15]);
n15 = NN_sep_ind([t000_17;t000_15],[t026_17;t026_15]);
n21 = NN_sep_ind([t005_17;t005_15],[t000_17;t000_15]);
n22 = NN_sep_ind([t005_17;t005_15],[t005_17;t005_15]);
n23 = NN_sep_ind([t005_17;t005_15],[t016_17;t016_15]);
n24 = NN_sep_ind([t005_17;t005_15],[t025_17;t025_15]);
n25 = NN_sep_ind([t005_17;t005_15],[t026_17;t026_15]);
n31 = NN_sep_ind([t016_17;t016_15],[t000_17;t000_15]);
n32 = NN_sep_ind([t016_17;t016_15],[t005_17;t005_15]);
n33 = NN_sep_ind([t016_17;t016_15],[t016_17;t016_15]);
n34 = NN_sep_ind([t016_17;t016_15],[t025_17;t025_15]);
n35 = NN_sep_ind([t016_17;t016_15],[t026_17;t026_15]);
n41 = NN_sep_ind([t025_17;t025_15],[t000_17;t000_15]);
n42 = NN_sep_ind([t025_17;t025_15],[t005_17;t005_15]);
n43 = NN_sep_ind([t025_17;t025_15],[t016_17;t016_15]);
n44 = NN_sep_ind([t025_17;t025_15],[t025_17;t025_15]);
n45 = NN_sep_ind([t025_17;t025_15],[t026_17;t026_15]);
n51 = NN_sep_ind([t026_17;t026_15],[t000_17;t000_15]);
n52 = NN_sep_ind([t026_17;t026_15],[t005_17;t005_15]);
n53 = NN_sep_ind([t026_17;t026_15],[t016_17;t016_15]);
n54 = NN_sep_ind([t026_17;t026_15],[t025_17;t025_15]);
n55 = NN_sep_ind([t026_17;t026_15],[t026_17;t026_15]);

cp11 = class_para([t000_17;t000_15],[t000_17;t000_15]);
cp12 = class_para([t000_17;t000_15],[t005_17;t005_15]);
cp13 = class_para([t000_17;t000_15],[t016_17;t016_15]);
cp14 = class_para([t000_17;t000_15],[t025_17;t025_15]);
cp15 = class_para([t000_17;t000_15],[t026_17;t026_15]);
cp21 = class_para([t005_17;t005_15],[t000_17;t000_15]);
cp22 = class_para([t005_17;t005_15],[t005_17;t005_15]);
cp23 = class_para([t005_17;t005_15],[t016_17;t016_15]);
cp24 = class_para([t005_17;t005_15],[t025_17;t025_15]);
cp25 = class_para([t005_17;t005_15],[t026_17;t026_15]);
cp31 = class_para([t016_17;t016_15],[t000_17;t000_15]);
cp32 = class_para([t016_17;t016_15],[t005_17;t005_15]);
cp33 = class_para([t016_17;t016_15],[t016_17;t016_15]);
cp34 = class_para([t016_17;t016_15],[t025_17;t025_15]);
cp35 = class_para([t016_17;t016_15],[t026_17;t026_15]);
cp41 = class_para([t025_17;t025_15],[t000_17;t000_15]);
cp42 = class_para([t025_17;t025_15],[t005_17;t005_15]);
cp43 = class_para([t025_17;t025_15],[t016_17;t016_15]);
cp44 = class_para([t025_17;t025_15],[t025_17;t025_15]);
cp45 = class_para([t025_17;t025_15],[t026_17;t026_15]);
cp51 = class_para([t026_17;t026_15],[t000_17;t000_15]);
cp52 = class_para([t026_17;t026_15],[t005_17;t005_15]);
cp53 = class_para([t026_17;t026_15],[t016_17;t016_15]);
cp54 = class_para([t026_17;t026_15],[t025_17;t025_15]);
cp55 = class_para([t026_17;t026_15],[t026_17;t026_15]);

%%with PCA
 cp11p = class_para_pca([t000_17;t000_15],[t000_17;t000_15],30);
cp12p = class_para_pca([t000_17;t000_15],[t005_17;t005_15],30);
cp13p = class_para_pca([t000_17;t000_15],[t016_17;t016_15],30);
cp14p = class_para_pca([t000_17;t000_15],[t025_17;t025_15],30);
cp15p = class_para_pca([t000_17;t000_15],[t026_17;t026_15],30);
cp21p = class_para_pca([t005_17;t005_15],[t000_17;t000_15],30);
cp22p = class_para_pca([t005_17;t005_15],[t005_17;t005_15],30);
cp23p = class_para_pca([t005_17;t005_15],[t016_17;t016_15],30);
cp24p = class_para_pca([t005_17;t005_15],[t025_17;t025_15],30);
cp25p = class_para_pca([t005_17;t005_15],[t026_17;t026_15],30);
cp31p = class_para_pca([t016_17;t016_15],[t000_17;t000_15],30);
cp32p = class_para_pca([t016_17;t016_15],[t005_17;t005_15],30);
cp33p = class_para_pca([t016_17;t016_15],[t016_17;t016_15],30);
cp34p = class_para_pca([t016_17;t016_15],[t025_17;t025_15],30);
cp35p = class_para_pca([t016_17;t016_15],[t026_17;t026_15],30);
cp41p = class_para_pca([t025_17;t025_15],[t000_17;t000_15],30);
cp42p = class_para_pca([t025_17;t025_15],[t005_17;t005_15],30);
cp43p = class_para_pca([t025_17;t025_15],[t016_17;t016_15],30);
cp44p = class_para_pca([t025_17;t025_15],[t025_17;t025_15],30);
cp45p = class_para_pca([t025_17;t025_15],[t026_17;t026_15],30);
cp51p = class_para_pca([t026_17;t026_15],[t000_17;t000_15],30);
cp52p = class_para_pca([t026_17;t026_15],[t005_17;t005_15],30);
cp53p = class_para_pca([t026_17;t026_15],[t016_17;t016_15],30);
cp54p = class_para_pca([t026_17;t026_15],[t025_17;t025_15],30);
cp55p = class_para_pca([t026_17;t026_15],[t026_17;t026_15],30);

n11 = NN_sep_ind_pca([t000_17;t000_15],[t000_17;t000_15]);
n12 = NN_sep_ind_pca([t000_17;t000_15],[t005_17;t005_15]);
n13 = NN_sep_ind_pca([t000_17;t000_15],[t016_17;t016_15]);
n14 = NN_sep_ind_pca([t000_17;t000_15],[t025_17;t025_15]);
n15 = NN_sep_ind_pca([t000_17;t000_15],[t026_17;t026_15]);
n21 = NN_sep_ind_pca([t005_17;t005_15],[t000_17;t000_15]);
n22 = NN_sep_ind_pca([t005_17;t005_15],[t005_17;t005_15]);
n23 = NN_sep_ind_pca([t005_17;t005_15],[t016_17;t016_15]);
n24 = NN_sep_ind_pca([t005_17;t005_15],[t025_17;t025_15]);
n25 = NN_sep_ind_pca([t005_17;t005_15],[t026_17;t026_15]);
n31 = NN_sep_ind_pca([t016_17;t016_15],[t000_17;t000_15]);
n32 = NN_sep_ind_pca([t016_17;t016_15],[t005_17;t005_15]);
n33 = NN_sep_ind_pca([t016_17;t016_15],[t016_17;t016_15]);
n34 = NN_sep_ind_pca([t016_17;t016_15],[t025_17;t025_15]);
n35 = NN_sep_ind_pca([t016_17;t016_15],[t026_17;t026_15]);
n41 = NN_sep_ind_pca([t025_17;t025_15],[t000_17;t000_15]);
n42 = NN_sep_ind_pca([t025_17;t025_15],[t005_17;t005_15]);
n43 = NN_sep_ind_pca([t025_17;t025_15],[t016_17;t016_15]);
n44 = NN_sep_ind_pca([t025_17;t025_15],[t025_17;t025_15]);
n45 = NN_sep_ind_pca([t025_17;t025_15],[t026_17;t026_15]);
n51 = NN_sep_ind_pca([t026_17;t026_15],[t000_17;t000_15]);
n52 = NN_sep_ind_pca([t026_17;t026_15],[t005_17;t005_15]);
n53 = NN_sep_ind_pca([t026_17;t026_15],[t016_17;t016_15]);
n54 = NN_sep_ind_pca([t026_17;t026_15],[t025_17;t025_15]);
n55 = NN_sep_ind_pca([t026_17;t026_15],[t026_17;t026_15]);

%%FEKO data commands
nf11 = NN_sep_ind([apctr;apctst],[apctr;apctst]);
nf12 = NN_sep_ind([apctr;apctst],[mbttr;apctst]);
nf13 = NN_sep_ind([apctr;apctst],[stringtr;stringtst]);
nf14 = NN_sep_ind([apctr;apctst],[msiletr;msiletst]);

nf21 = NN_sep_ind([mbttr;mbttst],[apctr;apctst]);
nf22 = NN_sep_ind([mbttr;mbttst],[mbttr;apctst]);
nf23 = NN_sep_ind([mbttr;mbttst],[stringtr;stringtst]);
nf24 = NN_sep_ind([mbttr;mbttst],[msiletr;msiletst]);

nf31 = NN_sep_ind([stringtr;stringtst],[apctr;apctst]);
nf32 = NN_sep_ind([stringtr;stringtst],[mbttr;apctst]);
nf33 = NN_sep_ind([stringtr;stringtst],[stringtr;stringtst]);
nf34 = NN_sep_ind([stringtr;stringtst],[msiletr;msiletst]);

nf41 = NN_sep_ind([msiletr;msiletst],[apctr;apctst]);
nf42 = NN_sep_ind([msiletr;msiletst],[mbttr;apctst]);
nf43 = NN_sep_ind([msiletr;msiletst],[stringtr;stringtst]);
nf44 = NN_sep_ind([msiletr;msiletst],[msiletr;msiletst]);

cpf11 = class_para([apctr;apctst],[apctr;apctst]);
cpf12 = class_para([apctr;apctst],[mbttr;apctst]);
cpf13 = class_para([apctr;apctst],[stringtr;stringtst]);
cpf14 = class_para([apctr;apctst],[msiletr;msiletst]);

cpf21 = class_para([mbttr;mbttst],[apctr;apctst]);
cpf22 = class_para([mbttr;mbttst],[mbttr;mbttst]);
cpf23 = class_para([mbttr;mbttst],[stringtr;stringtst]);
cpf24 = class_para([mbttr;mbttst],[msiletr;msiletst]);

cpf31 = class_para([stringtr;stringtst],[apctr;apctst]);
cpf32 = class_para([stringtr;stringtst],[mbttr;apctst]);
cpf33 = class_para([stringtr;stringtst],[stringtr;stringtst]);
cpf34 = class_para([stringtr;stringtst],[msiletr;msiletst]);

cpf41 = class_para([msiletr;msiletst],[apctr;apctst]);
cpf42 = class_para([msiletr;msiletst],[mbttr;apctst]);
cpf43 = class_para([msiletr;msiletst],[stringtr;stringtst]);
cpf44 = class_para([msiletr;msiletst],[msiletr;msiletst]);

%%multipolar commands
cphh = class_para(ahh,bhh);
cphv = class_para(ahv,bhv);
cpvh = class_para(avh,bvh);
cpvv = class_para(avv,bvv);

[cp1,np1]=multi_pol_si_1(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
[cp2,np2]=multi_pol_si_2(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
[cp3,np3]=multi_pol_si_3(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
[cp4,np4]=multi_pol_si_4(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
[cp5,np5]=multi_pol_si_5(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
[cp6,np6]=multi_pol_si_6(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
[cp7,np7]=multi_pol_si_7(ahh,ahv,avh,avv,bhh,bhv,bvh,bvv);
plot()