# MATLAB Spectrogram Visualization Project

This project generates a spectrogram of a signal and visualizes it using MATLAB's `pcolor` function, with power represented in decibels (dB) on a log scale.

## Introduction

This MATLAB project visualizes the power spectral density (PSD) of a signal using a 2D color plot (spectrogram). The plot is generated with the `pcolor` function, where time and frequency axes are plotted, and the color represents the magnitude of the power spectrum, expressed in dB (decibels).

### The Challenge

Planetary seismology missions struggle with the power requirements necessary to send continuous seismic data back to Earth. But only a fraction of this data is scientifically useful! Instead of sending back all the data collected, what if we could program a lander to distinguish signals from noise, and send back only the data we care about? Your challenge is to write a computer program to analyze real data from the Apollo missions and the Mars InSight Lander to identify seismic quakes within the noise!

## Installation

### Prerequisites
To run this project, you need:
- MATLAB installed on your system (R2018b or later is recommended).
- The Signal Processing Toolbox, if not already included in your MATLAB installation.

Clone or download the project:

```bash
git clone https://github.com/salvatorecalo/QuakeSpace-X
cd QuakeSpace-X
```

## Structure 
- plugin/: plugins that you can use with our algorithm
  
## How to 

To use this algorythm you need to pass a csv file to the programme (you can edit it in the readdata.m, var namefile). 

Main functions:
- readdata.m: read the file
- spectro.m
- computePS.m

## Data sources
- Input data sources: https://wufs.wustl.edu/SpaceApps/data/space_apps_2024_seismic_detection.zip

## Links 
Team page: https://www.spaceappschallenge.org/nasa-space-apps-2024/find-a-team/dianatroccoli/
