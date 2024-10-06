clear
close all
clc

% Transforms the csv files into mat files that are easy to manage in matlab
%
%                   ----- !!!ATTENTION!!! -----
% It's quite long to run so the output '.mat' files are already provided
%
% I recommend running only the mars sections to verify them, they have a
% much lower volume of files to handle

%% Lunar / Train
fnames = readtable("lunartrain_name.txt", "Delimiter", ' ');

for j = 1:size(fnames, 1)
    case_name = strcat('data/', fnames{j, 1});
    data = readtable(case_name{1,1});

    fs = 1/(data{2,2}-data{1,2});
    vfs(j) = fs;
    vTsg{j} = data{:,2};
    vCsg{j} = data{:,3};
end

vfs_lunarTRAIN = vfs;
vCsg_lunarTRAIN = vCsg;
vTsg_lunarTRAIN = vTsg;
clear vfs vTsg vCsg fs fnames data case_name j
save('data_lunarTRAIN.mat')
clear

%% Lunar / Test
fnames = readtable("lunartest_name.txt", "Delimiter", ' ');

for j = 1:size(fnames, 1)
    case_name = strcat('data/', fnames{j, 1});
    data = readtable(case_name{1,1});

    fs = 1/(data{2,2}-data{1,2});
    vfs(j) = fs;
    vTsg{j} = data{:,2};
    vCsg{j} = data{:,3};
end

vfs_lunarTEST = vfs;
vCsg_lunarTEST = vCsg;
vTsg_lunarTEST = vTsg;
clear vfs vTsg vCsg fs fnames data case_name j
save('data_lunarTEST.mat')
clear

%% Mars / Train
fnames = readtable("marstrain_name.txt", "Delimiter", ' ');

for j = 1:size(fnames, 1)
    case_name = strcat('data/', fnames{j, 1});
    data = readtable(case_name{1,1});

    fs = 1/(data{2,2}-data{1,2});
    vfs(j) = fs;
    vTsg{j} = data{:,2};
    vCsg{j} = data{:,3};
end

vfs_marsTRAIN = vfs;
vCsg_marsTRAIN = vCsg;
vTsg_matsTRAIN = vTsg;
clear vfs vTsg vCsg fs fnames data case_name j
save('data_marsTRAIN.mat')
clear

%% Mars / Test
fnames = readtable("marstest_name.txt", "Delimiter", ' ');

for j = 1:size(fnames, 1)
    case_name = strcat('data/', fnames{j, 1});
    data = readtable(case_name{1,1});

    fs = 1/(data{2,2}-data{1,2});
    vfs(j) = fs;
    vTsg{j} = data{:,2};
    vCsg{j} = data{:,3};
end

vfs_marsTEST = vfs;
vCsg_marsTEST = vCsg;
vTsg_marsTEST = vTsg;
clear vfs vTsg vCsg fs fnames data case_name j
save('data_marsTEST.mat')
clear