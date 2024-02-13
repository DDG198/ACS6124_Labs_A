function mmse = MMSE(posterior_pdf, waypoints)
%MMSE Calculates the mmse value for some data
if nargin < 2
    waypoints = [];
end
mmse = integral(@(x) x .* posterior_pdf(x), -inf, inf, Waypoints=waypoints);
end

