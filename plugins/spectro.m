clc
close all
clear

load("data.mat")

seism_data = data_moon{:,3};

dt = data_moon{2,2}-data_moon{1,2};
fs = 1/(dt);

window = 512;          % Length of each segment
noverlap = window/4*3;        % Overlap between segments
nfft = 216;            % Number of FFT points

spectrogram(seism_data, window, noverlap, nfft, fs, 'yaxis');
colorbar;              % Display the color scale
title('Spectrogram of Seismic Data');

