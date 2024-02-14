clear all;
close all;
clc;

% Define noise statistics
noise_mean = 0;
noise_var = 9;

%% Task 1.1 Load the data
fprintf("Task 1.1\n");
encoder_x = load_data();
n_measurements_setup1=length(encoder_x); % full measurement
n_measurements_setup2=3; % first 3 measurement

%% Task 1.2 Compute the mean
fprintf("Task 1.2\n");
t1_2_full_mean = mean(encoder_x);
t1_2_first_3_mean = mean(encoder_x(1:n_measurements_setup2));
fprintf("full_mean=%f\n",t1_2_full_mean);
fprintf("first_3_mean=%f\n",t1_2_first_3_mean);

%% Task 1.3 Compute the truncated mean
fprintf("Task 1.3\n");
% Assume prior: encoder_x is U(21, 30)
% Define prior distribution
% I assume this means throw away any data outside of this range?

% Filter out values outside of 21deg to 30deg
t1_3_truncated_encoder_x(x_min <= encoder_x) = x_min;
t1_3_truncated_encoder_x(encoder_x <= x_max) = x_max;
t1_3_in_range_encoder_x = encoder_x(t1_3_truncated_encoder_x);

% Compute the truncated means
t1_3_full_mean = mean(t1_3_in_range_encoder_x);
t1_3_first_3_mean = mean(t1_3_in_range_encoder_x(1:n_measurements_setup2));

% Print results
fprintf("full_mean=%f\n",t1_3_full_mean);
fprintf("first_3_mean=%f\n",t1_3_first_3_mean);
