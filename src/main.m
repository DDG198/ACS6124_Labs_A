clear all;
close all;
clc;

% Define noise statistics
noise_mean = 0;
noise_var = 9;

%% Task 1.1 Load the data
encoder_x = load(".\files\encoder.mat").encoder;
n_measurements_setup1=length(encoder_x); % full measurement
n_measurements_setup2=3; % first 3 measurement
