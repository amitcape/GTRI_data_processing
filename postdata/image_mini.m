%%This is the programme to make the GTRI image clips a bit smaller, so that
%%data size would reduce and we can apply eigne analysis on them. Currently
%%its of size 80x221, half of which is just stray clutter. So basically
%%here we chop off some of the clutter data from the sides. Input is the 3D
%%data of image clips, and the putput is 3D image clip dataset after
%%reduction of the image sizes.
%%AKM Oct 2006

function[outD] = image_mini(inD);

[m,n,p] = size(inD);

