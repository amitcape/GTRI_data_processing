%%This is a new programme written by me (!) with parts from other standard
%%MSTAR programmes, to get the data from the GTRI dataset and arrnge them
%%in matrix format. This programme need to be run with each list of files;
%%hence it need to be run 4 times (for 4 diff. polarisations) in each
%%directory!
%%
%%AKM Sept 2006
%%modified Apr 2007 AKM; the o/p will be phase data
function [phdata] = data_x();
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
   numcol=numcol(1)/2;
   numrow = numrow(1)/2;
    phdata = zeros(numchips,numrow,numcol);
   j = sqrt(-1);
   
   for k=1:numchips,
       for i=1:(numcol*numrow),
            phdatachp(i) = imgdata(k,2*i-1)+j*imgdata(k,2*i);
       end;
       
       phdatatmp = reshape(phdatachp,numrow,numcol);
       phdata(k,:,:) = phdatatmp;
   end;

