function mmse_x_given_y = MMSE_simple_gaussian(data_mean, data_likelihood_var, prior_mean, prior_var)
%MMSE_SIMPLE_GAUSSIAN Calculates the mmse for a gaussian prior and noise
%   give the key information about the dataset: mean and num datapoints
data = (prior_var * data_mean) / (prior_var + data_likelihood_var);
prior = (data_likelihood_var * prior_mean) / (prior_var + data_likelihood_var);
mmse_x_given_y = data + prior;
end
