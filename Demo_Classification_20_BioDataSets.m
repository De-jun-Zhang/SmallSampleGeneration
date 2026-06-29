
% clc
% clear
% fileFolder=fullfile('D:\Academic-Zdj\CodeAvailability_Revision_Final\SmallSampleGeneration-main\scglue\BioDatasets\Cell-Blast');
% dirOutput=dir(fullfile(fileFolder,'*.h5ad'));
% H5_Names={dirOutput.name};
% clear fileFolder dirOutput
% save H5_Names.mat H5_Names

load H5_Names

for h = 1:length(H5_Names)
    file_path = H5_Names{h};
    % dataName = H5_Names{h}(1:3);
    disp(file_path)
    H5Read
    Data = double(X_sparse);
    Label = double(cell_type)+1;
    clear X_sparse cell_type 

    Data = normalize(Data,'scale');
    Data(isnan(Data)) = 0;

    Number_List = [1 2 5 10 20];

    for n_l = 1:length(Number_List)
        Number = Number_List(n_l);
        Main_Generation_Classification
        save(strcat(strcat(file_path,num2str(Number)),'.mat'), 'SingleSample_Result');
    end
end

