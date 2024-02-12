clear all;
close all;
clc;

% Define noise statistics
noise_mean = 0;
noise_var = 9;

%% Task 1.1 Load the data
fprintf("Task 1.1\n");
encoder_x = load(".\files\encoder.mat").encoder;
n_measurements_setup1=length(encoder_x); % full measurement
n_measurements_setup2=3; % first 3 measurement

%% Task 1.2 Compute the mean
fprintf("Task 1.2\n");
t1_2_full_mean = mean(encoder_x);
t1_2_first_3_mean = mean(encoder_x(1:n_measurements_setup2));
fprintf("full_mean=%f\n",t1_2_full_mean);
fprintf("first_3_mean=%f\n",t1_2_first_3_mean);
