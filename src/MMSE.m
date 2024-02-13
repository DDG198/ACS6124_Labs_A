function mmse = MMSE(posterior_pdf)
%MMSE Calculates the mmse value for some data
mmse = integral(@(x) x * posterior_pdf(x), -inf, inf);
end

