%%This is a new programme written by me (!) with parts from other standard
%%MSTAR programmes, to get the data from the GTRI dataset and arrnge them
%%in matrix format. This programme need to be run with each list of files;
%%hence it need to be run 4 times (for 4 diff. polarisations) in each
%%directory!
%%
%%AKM Sept 2006

% Initialize
clear all

% Define some flags..
single_type = 1;  % Single chip input option..
list_type   = 2;  % List of chips input option..

%************************************************************************
%*                             INPUT  SECTION                           *
%************************************************************************
  % Prompt for input target chip list file..
   disp(' ');
   chip_list = input('Name of file containing list of target chips: ','s');
   
%************************************************************************
%               PROCESS BASED on SINGLE or LIST TYPE                    *
%************************************************************************

%if (in_opt == list_type)

   % Call EXTERNAL FUNCTION to process list data...
   [imgdata, numcol, numrow, numchips] = rchplist(chip_list);

% else
% 
%    %*********************************
%    %*  SINGLE CHIP HEADER SECTION   *
%    %*********************************
% 
%    % Initializing some things...
%    fid      = 1;
%    tp       = [];
%    numchips = 1;
%     
%   
%  
%    % Open target chip for reading...
%    fid = fopen(chip_file(1,:),'r');
% 
%    %* Read Phoenix header..extract parameters.. 
%   
%    end
% 
%    % Calculate HEADER SIZE (in bytes)...
%    hdr_size_field = 'PhoenixHeaderLength=';
%    hdr_size_flag = 0;
%    i = 0;
% 
%    while(hdr_size_flag == 0)
%      i = i+1;
%      hdr_size_flag = strcmp(header(i,1:size(hdr_size_field,2)),hdr_size_field);
%    end  
% 
%    hdrsize = str2num(header(i,size(hdr_size_field,2)+1:size(header,2))); 
%    hdrsize = hdrsize + 512;  % Add 512 for native C4PL hdr..
% 
%    % Extract NUMBER OF COLUMNS.... 
%    numcol_field = 'NumberOfColumns=';
%    numcol_flag = 0;
%    i = 0;
%   
%    while(numcol_flag == 0)
%      i = i+1;
%      numcol_flag = strcmp(header(i,1:size(numcol_field,2)),numcol_field);
%    end 
% 
%    numcol = str2num(header(i,size(numcol_field,2)+1:size(header,2)));
% 
%    % Extract NUMBER OF ROWS.... 
%    numrow_field = 'NumberOfRows=';
%    numrow_flag = 0;
%    i = 0;
%   
%    while(numrow_flag == 0)
%      i = i+1;
%      numrow_flag = strcmp(header(i,1:size(numrow_field,2)),numrow_field);
%    end 
%  
%    numrow = str2num(header(i,size(numrow_field,2)+1:size(header,2))); 
% 
% 
%    %*******************************************
%    %*  SINGLE CHIP IMAGE PROCESSING SECTION   *
%    %*******************************************
% 
%    disp(['Processing chip image: ', chip_file]);
%    disp(' ');
% 
%    % Seek to start of clutter scene image data..
%    fseek(fid,hdrsize,'bof');
% 
%    % Read calibrated MAGNITUDE data...form REAL matrix..
%    imgdata = fread(fid,[numcol*numrow],'float32');
%    imgdata = reshape(imgdata,numcol,numrow); 
% 
%    % Matlab pixels start from 1 so we transpose image and add 1 to it..
%    imgdata     = imgdata' + 1;
% 
%    % Close file..
%    fclose(fid);
% 
% end 


%************************************************************************
%*                   MAIN ROUTINE DISPLAY SECTION                       *
%************************************************************************

% Put up output display window...
disp(' ');
figure(1)


   % Set up grayscale colortable based on default graymap..
   %colormap(gray(256));

   % Determine how many rows/cols in series subplot..
   M = sqrt(numchips);

   % Display list of chips..
   for i = 1:numchips
     subplot(ceil(M),ceil(M), i);
     imagesc(log10(abs(imgdata(:,(i-1)*numrow(i)+1:i*numrow))+1))
    
     % Set Axis Parameters..
     axis image;             % Use image wid to hgt aspect ratio..
     axis off;               % Turn off axis labeling..
   end

   % Brighten a little..
   brighten(0.3);


