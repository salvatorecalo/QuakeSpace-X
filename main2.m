clear
close all
clc

%--- Inputting data
% read_data % --- /!\ DO NOT RUN UNLESS YOU'RE SURE /!\ ---

% Input data has already been provided in '.mat' format for ease of running
% the main program. The script to convert the '.csv' in '.mat' takes quite
% some time to get through all the data set.
%
% If you want to validate the read_data script, I recommend running it
% separately and verifying the mars sections, which have a much lower
% volume of data.

load("data_lunarTRAIN.mat");
load("data_lunarTEST.mat");
load("data_marsTRAIN.mat");
load("data_marsTEST.mat");

 
%% --- Applying computations
% We selected a few test cases to show in this main.
% Feel free to increase or decreases the number of test cases computed
% based on how many you want to show at once (more cases -> more time to
% run the main)
% Change test cases: select the value of j parameter 1 -> 96
for j = 23:29
% Moon parameters
thres_ev = -19.4;
thres_st = -19.9;
k_ign = 3;
k_dur = 540;

fs = vfs_lunarTEST(j);
vCsg = vCsg_lunarTEST{j};
vTsg = vTsg_lunarTEST{j};

[vPS, vT] = computePS(vCsg, fs);
[vT_ev, flags] = computePEAKS(vPS, vT, thres_ev, thres_st, k_ign, k_dur);

figure('Units','normalized', 'Position', [0.1 0.3 0.8 0.4])
plot(vTsg, vCsg, 'k', 'LineWidth', 0.3)
hold on
plot(vT_ev, vPS(flags), 'or', 'LineWidth', 3)
axis([vTsg(1), vTsg(end), -max(vCsg)*1.2, max(vCsg)*1.2])
xlabel('Time (s)')
ylabel('Signal (m/s)')
title(strcat('Test case number  ', num2str(j)))
grid on
end

% For mars data: tuning of the function parameter is required