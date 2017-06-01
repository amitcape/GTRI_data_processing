%%program to form the K-matrix element data from the 4 multi polar data set
%%supplied. It follows the paper by Germond on bistatic polarimetry
%%AKM Nov. 2005
function[a1,a2,a3,a4,a5,a6,a7,a8,a9] = K_matrix_formation(s1,s3,s4,s2); %s1:hh, s2:hv; s3:vh; s4:vv

s5 = (s3+s4)/2;
s6 = (s3-s4)/2;
%%In comment the notation used by Germond will be given
a1 = 0.25 * ((abs(s1+s2).^2)); %%A0
a2 = 0.25 * ((abs(s1-s2).^2)) - ((abs(s5)).^2); %%B
a3 = 0.5 * (((abs(s1)).^2) - ((abs(s2)).^2));%%C
a4 = imag(s1 .* conj(s2));%%D
a5 = real(conj(s5) .* (s1 - s2));%%E
a6 = imag(conj(s5) .* (s1 - s2));%%F
a7 = imag(conj(s5) .* (s1 + s2));%%G
a8 = real(conj(s5) .* (s1 + s2));%%H

a9 = 0.25 * ((abs(s1-s2).^2)) + ((abs(s5)).^2);%%B0