function posterior_pdf = posterior_pdf_factory(likelihood_pdf, x_pdf, integral_waypoints)
%POSTERIOR_PDF_FACTORY returns a function that is the posterior pdf given
% the pdf of x, and the likelihood pdf.
%   supply with integral waypoints to help the integrator
if nargin < 3
    integral_waypoints=[];
end
top = @(x) likelihood_pdf(x) .* x_pdf(x);
integrand = @(x_) likelihood_pdf(x_) .* x_pdf(x_);
bot = integral(integrand, -inf, inf, Waypoints=integral_waypoints);
posterior_pdf = @(x) top(x) / bot;
end
