encoder_x = load_data();
prior_pdf = gaussian_pdf(25, 2);

x = linspace(1.1*min(encoder_x), 1.1*max(encoder_x), 1000);

figure
yyaxis left
histogram(encoder_x, 15)
xlabel("encoder reading / deg");
ylabel("occurances");
yyaxis right
plot(x, prior_pdf(x))
ylabel("prior pdf")
