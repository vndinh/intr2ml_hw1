muy = 0;
sigma = sqrt(3);
epsilon = -9:0.1:9;
G = exp(-(epsilon-muy).^2/(2*sigma^2)) / sqrt(2*pi*sigma^2);
plot(epsilon, G, '-r');
hold on;

b = sqrt(3);
L = exp(-abs(epsilon-muy)/b) / (2*b);
plot(epsilon, L, '-b');

legend('Gaussian', 'Laplace');
xlabel('Noise, \epsilon');
ylabel('Probability of noise, P(\epsilon)');
title('Gaussian and Laplace distribution with \mu = 0, \sigma = b = \surd3');
hold off;