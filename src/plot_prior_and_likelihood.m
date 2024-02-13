Y = load_data();
prior_pdf = @(x) ((21 <= x) & (x <= 30))/(30 - 21);
likelihood_pdf = dataset_likelihood_pdf_factory(Y, 9);

x = linspace(10, 40, 1000);

figure
yyaxis left
plot(x, prior_pdf(x))
yyaxis right
plot(x, likelihood_pdf(x))
