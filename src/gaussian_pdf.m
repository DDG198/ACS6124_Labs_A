function pdf = gaussian_pdf(mean,var)
%GAUSSIAN_PDF returns a gaussian pdf with the given parameters
pre_bit = 1/sqrt(2*pi*var);
exp_bit = @(x) -(x - mean).^2/(2*var);
pdf = @(x) pre_bit .* exp(exp_bit(x));
end

