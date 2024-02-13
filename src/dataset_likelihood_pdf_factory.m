function likelihood_pdf = dataset_likelihood_pdf_factory(Y, noise_var)
pre_bit = 1/sqrt(2*pi*noise_var);
exp_bit = @(x) -(x - Y).^2/(2*noise_var);
likelihoods = @(x) pre_bit .* exp(exp_bit(x));
likelihood_pdf = @(x) prod(likelihoods(x));
end

