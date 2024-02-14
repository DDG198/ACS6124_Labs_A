function mmse = MMSE_atomic(x_prior, Y, noise_var, waypoints)
%MMSE Calculates the mmse value for some data, a prior and expected noise
if nargin < 3
    waypoints = [];
end
likelihood_pdf = dataset_likelihood_pdf_factory(Y, noise_var);
posterior_pdf = posterior_pdf_factory(likelihood_pdf, x_prior, waypoints);
mmse = integral(@(x) x .* posterior_pdf(x), -inf, inf, Waypoints=waypoints);
end

