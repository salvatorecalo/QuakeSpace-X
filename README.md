# MATLAB Spectrogram Visualization Project

This project generates a spectrogram of a signal and visualizes it using MATLAB's `pcolor` function, with power represented in decibels (dB) on a log scale.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Introduction

This MATLAB project visualizes the power spectral density (PSD) of a signal using a 2D color plot (spectrogram). The plot is generated with the `pcolor` function, where time and frequency axes are plotted, and the color represents the magnitude of the power spectrum, expressed in dB (decibels).

## Installation

To run this project, you need:
- MATLAB installed on your system (R2018b or later is recommended).
- The Signal Processing Toolbox, if not already included in your MATLAB installation.

Clone or download the project:

```bash
git clone https://github.com/salvatorecalo/QuakeSpace-X
cd QuakeSpace-X
```
## Usage 

To use this algorythm you need to pass a csv file to the programme (you can edit it in the readdata.m, var namefile). 

Main functions:
- readdata.m: read the file
- spectro.m
- computePS.m