
t = linspace(0, 2*200e-3, 2000);
T = 0.225;
A = 3;
y = zeros(size(t));

for i = 1:length(t)
    y(i) = (A/T) * mod(t(i), T);
end

N = [5, 10, 20];

y_5 = zeros(size(t));
y_10 = zeros(size(t));
y_20 = zeros(size(t));

for i = 1:length(N)
    y_5   = y_5   + fourier_exp(N(i), T, y, t);
    y_10  = y_10  + fourier_exp(N(i), T, y, t);
    y_20  = y_20  + fourier_exp(N(i), T, y, t);
end

plot(t, y, 'k', t, y_5, 'r--', t, y_10, 'o--', t, y_20, 'b-.');
xlabel('Time (s)');
ylabel('Amplitude');
title('A Periodic Signal');
legend('Signal', 'N=5', 'N=10', 'N=20');



