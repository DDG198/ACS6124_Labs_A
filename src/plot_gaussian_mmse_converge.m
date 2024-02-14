Y = load_data();
tot_datapoints = length(Y);
sizes = (2:length(Y));
prior = gaussian_pdf(25, 2);

mmses = zeros(size(sizes));
for i = 1:length(sizes)
    mmses(i) = MMSE_atomic(prior, Y(1:sizes(i)), 9, 25);
end

plot(Y)
hold on
plot(sizes, mmses)
hold off
