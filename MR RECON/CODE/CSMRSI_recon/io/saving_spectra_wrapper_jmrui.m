function saving_spectra_wrapper_jmrui(spectra)
D = size(spectra);

%% Open a mrui text file
[filename,pathname]=uigetfile('C:\Users\sgeeth\Documents\Data\CS_CSI\For_paper\Processed_data\*.txt','Pick a ref jmrui file');
fileaddress = fullfile(pathname,filename);

%% Read string data from old jmrui file
fid=fopen(fileaddress);
str_data = textscan(fid,'%s','delimiter','\n');
str_data2 = str_data{1,1};

%% Hardcoded jMRUI changes in header
voxels = D(1)*D(2);
str_data2{6}=['DatasetsInFile: ',num2str(voxels)];

%% Send info to jmrui saver
[filename,pathname]=uiputfile('C:\Users\sgeeth\Documents\Data\CS_CSI\For_paper\Processed_data\*.txt','Save as jmrui file');
fileaddress = fullfile(pathname,filename);
save_jMRUI_fmts(spectra,str_data2,fileaddress,1);
