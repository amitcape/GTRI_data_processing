%%making movie for GTRI files
%%AKM Nov 2006

function[A] = gtri_movie();

load gtri_n1.mat
figure(1);
db_diff = 65;
[n,o,p]=size(im1hh);
numframes = n;
A=moviein(numframes); % create the movie matrix
set(gca,'NextPlot','replacechildren');
axis equal ;% fix the axes
%ax=linspace(-5,5,50);
for i=1:numframes
%     hhdb = 20*log10(abs(squeeze(im1hh(i,:,:))));
%     db_max = max(hhdb(:));
%     db_min = db_max - db_diff;
%     %fig = figure(1);
%     subplot(221),imagesc(hhdb, [db_min, db_max]);colorbar vert;axis equal tight off;
%     hvdb = 20*log10(abs(squeeze(im1hv(i,:,:))));
%     db_max = max(hvdb(:));
%     db_min = db_max - db_diff;
%     %fig = figure(1);
%     subplot(222),imagesc(hvdb, [db_min, db_max]);colorbar vert;axis equal tight off;
%     vhdb = 20*log10(abs(squeeze(im1vh(i,:,:))));
%     db_max = max(vhdb(:));
%     db_min = db_max - db_diff;
%     %fig = figure(1);
%     subplot(223),imagesc(vhdb, [db_min, db_max]);colorbar vert;axis equal tight off;
%     vvdb = 20*log10(abs(squeeze(im1vv(i,:,:))));
%     db_max = max(vvdb(:));
%     db_min = db_max - db_diff;
%     %fig = figure(1);
%     subplot(224),imagesc(vvdb, [db_min, db_max]);colorbar vert;axis equal tight off;
    for ii=1:o,
        for jj=1:p,
            hh(ii,jj)=abs(im1hh(i,ii,jj));
        end;
    end;
    for ii=1:o,
        for jj=1:p,
            hv(ii,jj)=abs(im1hv(i,ii,jj));
        end;
    end;
    for ii=1:o,
        for jj=1:p,
            vh(ii,jj)=abs(im1vh(i,ii,jj));
        end;
    end;
    for ii=1:o,
        for jj=1:p,
            vv(ii,jj)=abs(im1vv(i,ii,jj));
        end;
    end;
    subplot(221),image(hh/140);colorbar vert;axis equal tight off;
    subplot(222),image(hv/140);colorbar vert;axis equal tight off;
    subplot(223),image(vh/140);colorbar vert;axis equal tight off;
    subplot(224),image(vv/140);colorbar vert;axis equal tight off;
   % pause(0.1)
    A(i)=getframe(gcf);
end;
%%foloowing r the commands u use to make an avi movie file
% aa=gtri_movie;
% movie2avi(aa,'movie_abs');