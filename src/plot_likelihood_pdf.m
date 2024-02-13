likelihood_pdf = dataset_likelihood_pdf_factory(load_data(), 9);
x = linspace(10, 30, 1000);
plot(x, likelihood_pdf(x));
xlabel("True value")
ylabel("Likelihood of seeing dataset")
