%%some commands to test the inter cluster distance and hence to measyre the
%%effect of multipolar data
%%AKM Nov 2006
load gtri_n1.mat;
load gtri_n2.mat;
load gtri_n3.mat;
load gtri_n11.mat;
load gtri_n12.mat;

nihh1 = NN_sep_ind(im1hh,im2hh);
nihh2 = NN_sep_ind(im1hh,im3hh);
nihh3 = NN_sep_ind(im1hh,im11hh);
nihh4 = NN_sep_ind(im1hh,im12hh);


nihv1 = NN_sep_ind(im1hv,im2hv);
nihv2 = NN_sep_ind(im1hv,im3hv);
nihv3 = NN_sep_ind(im1hv,im11hv);
nihv4 = NN_sep_ind(im1hv,im12hv);

nivh1 = NN_sep_ind(im1vh,im2vh);
nivh2 = NN_sep_ind(im1vh,im3vh);
nivh3 = NN_sep_ind(im1vh,im11vh);
nivh4 = NN_sep_ind(im1vh,im12vh);

nivv1 = NN_sep_ind(im1vv,im2vv);
nivv2 = NN_sep_ind(im1vv,im3vv);
nivv3 = NN_sep_ind(im1vv,im11vv);
nivv4 = NN_sep_ind(im1vv,im12vv);

cihh1 = class_para(im1hh,im2hh);
cihh2 = class_para(im1hh,im3hh);
cihh3 = class_para(im1hh,im11hh);
cihh4 = class_para(im1hh,im12hh);

cihv1 = class_para(im1hv,im2hv);
cihv2 = class_para(im1hv,im3hv);
cihv3 = class_para(im1hv,im11hv);
cihv4 = class_para(im1hv,im12hv);

civh1 = class_para(im1vh,im2vh);
civh2 = class_para(im1vh,im3vh);
civh3 = class_para(im1vh,im11vh);
civh4 = class_para(im1vh,im12vh);

civv1 = class_para(im1vv,im2vv);
civv2 = class_para(im1vv,im3vv);
civv3 = class_para(im1vv,im11vv);
civv4 = class_para(im1vv,im12vv);

[mpci1,mpni1] = multi_pol_si_2(im1hh,im1hv,im1vh,im1vv,im2hh,im2hv,im2vh,im2vv);
[mpci2,mpni2] = multi_pol_si_2(im1hh,im1hv,im1vh,im1vv,im3hh,im3hv,im3vh,im3vv);
[mpci3,mpni3] = multi_pol_si_2(im1hh,im1hv,im1vh,im1vv,im11hh,im11hv,im11vh,im11vv);
[mpci4,mpni4] = multi_pol_si_2(im1hh,im1hv,im1vh,im1vv,im12hh,im12hv,im12vh,im12vv);

figure; 
plot([nihh1 nihh2 nihh3 nihh4],'r-o')
hold on
plot([nihv1 nihv2 nihv3 nihv4],'x-g')
plot([nivh1 nivh2 nivh3 nivh4],'*-k')
plot([nivv1 nivv2 nivv3 nivv4],'>-c')
plot([mpni1 mpni2 mpni3 mpni4],'-^')
grid;title('NNSI');

figure;
plot([cihh1 cihh2 cihh3 cihh4],'o-r')
hold on
plot([cihv1 cihv2 cihv3 cihv4],'x-g')
plot([civh1 civh2 civh3 civh4],'*-k')
plot([civv1 civv2 civv3 civv4],'>-c')
plot([mpci1 mpci2 mpci3 mpci4],'-^');
grid;title('CGSI');