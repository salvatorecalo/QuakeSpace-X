clear
close all
clc

%Training

%{
fname_marsTR_ev = 'data/mars/training/catalogs/Mars_InSight_training_catalog_final.csv';
catalog_mars = readtable(fname_marsTR_ev);
delete fname_marsTR_ev

j_mars = 2; % quali degli esempi vuoi vedere (marte 1-2)

fname_marsTR_data = strcat('data/mars/training/data/', catalog_mars{j_mars,1});
data_mars = readtable(fname_marsTR_data{1,1});
%}

fname_moonTR_ev = 'data/lunar/training/catalogs/apollo12_catalog_GradeA_final.csv';
catalog_moon = readtable(fname_moonTR_ev);
delete fname_moonTR_ev

j_moon = 1; %quali degli esempi vuoi vedere (luna 1-76)

fname_moonTR_data = strcat('data/lunar/training/data/S12_GradeA/', catalog_moon{j_moon,1}, '.csv');
data_moon = readtable(fname_moonTR_data{1,1});

plot(data_moon{:,2}, (data_moon{:,3}))

dt = data_moon{2,2}-data_moon{1,2}; %Freq campionamento
fs = dt^-1;

save("data", "data_moon")
