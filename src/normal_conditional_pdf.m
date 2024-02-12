function p = normal_conditional_pdf(x, Y, noise_var)
%NORMAL_CONDITIONAL_PDF probability density function y = x + v where v is N(0, noise_var)
    num_datapoints = length(Y);
    pre_exp = 1/sqrt(2.*pi.*noise_var/num_datapoints);
    exp_bit = ((x - mean(Y)).^2)/(2.*noise_var/num_datapoints);
    p = pre_exp .* exp(exp_bit);
end
