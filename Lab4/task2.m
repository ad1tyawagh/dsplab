x_n = [1, 4, 3, 6, 1]
h_n = [5, 2, 1, 0, 0]

% Compute y(n) = x(n) * h(n) using 
% (i) Graphical method (Pen Paper)
% (ii) Short-cut method (Pen Paper)
% (iii) by converting convolution operation into a 
%       corresponding matrix representation using Toeplitz matrix 
% (iv) Matlab  function cov(x, h)
y_n = conv(x_n, h_n);
plot(y_n);
% (v) using FFT and IFFT
x_s = fft(x_n);
h_x = fft(y_n);

y_s = x_s .* h_n;
y_N = ifft(y_s);