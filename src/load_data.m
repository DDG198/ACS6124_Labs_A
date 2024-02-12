function [encoder_data] = load_data()
%LOAD_DATA loads lab A data from the .mat file provided
encoder_data = load(".\files\encoder.mat").encoder;
end
