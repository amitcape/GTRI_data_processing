% clear all; load target_27_99
%__________________________________________________________________________
%% Parameters:
db_diff = 65;
fig_ind = 1;
database_var = t27_99HHim;
% database_var = t27_99HVim;
% database_var = t27_99VHim;
% database_var = t27_99VVim;

% Odd bounce polarization:
% database_var = abs(t27_99HHim + t27_99VVim)/2;

% Even bounce polarization:
%database_var = abs(t27_99HHim - t27_99VVim)/2 + 2*abs(t27_99HVim);
%__________________________________________________________________________
%% Plot data:
avin = avifile('test.avi');
for ind1 = 1:dim1, 
    db_im = 20*log10(abs(squeeze(database_var(ind1,:,:))));
    db_max = max(db_im(:));
    db_min = db_max - db_diff;
    fig = figure(fig_ind);
    imagesc(db_im, [db_min, db_max])
    colorbar vert
    axis equal tight
    avin = addframe(avin,fig);
   %pause(1)
end;
avin = close(avin);
close(fig);
%__________________________________________________________________________
%% Employ ph databases:
% database_var = t27_99HHph;
% 
% fft_test = squeeze(fftshift(fft(t27_99HHph(ind1,:,:),[],2),2));
% fft_test_av = mean(fft_test,2);
% fft_test = fft_test - fft_test_av*ones(1,dim3);
% fft_test = fftshift(fft(fft_test,[],2),2);
% db_im = 20*log10(abs(fft_test));
% db_max = max(db_im(:));
% db_min = db_max - db_diff;
% 
% 
% db_im = 20*log10(abs(fft_test));
% db_max = max(db_im(:));
% db_min = db_max - db_diff;
% figure(2);
% imagesc(db_im, [db_min, db_max])
% colorbar vert
% axis equal tight
