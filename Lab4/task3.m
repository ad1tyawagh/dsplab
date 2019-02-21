% You have a DSP processor with a sampling rate of 1000 samples/s.
% Generate an impulse response h(n) of an FIR system with response
% y(n) = 1/3(x(n) + x(n ? 1) + x(n ? 2)]). Plot the frequency spectrum
% of h(n).
h_n = [1/3, 1/3, 1/3];

% Frequency Response
h_s = fft(h_n, 1000);
fs = 1000;
f1 = linspace(0, fs/2, 501) % Use appropriate scales.
f2 = linspace(-fs/2, fs/2, 1000) % Use appropriate scales.
figure(1); plot(f1, abs(h_s(500:1000)));
figure(2); plot(f2, abs(h_s));

% Find the output sequence when the input is a sine wave of frequency
% of 100 Hz. Plot the frequency specrum and show that the frequency
% of the output is same as that of the input.

fs1 = 500;
t = linspace(0, 1, fs1);
sin_wav = sin(2*pi*100*t);

fft_sin_wav = fftshift(fft(sin_wav, 500)); 

output_sin_wav = conv(h_n, sin_wav);

fft_output_sin_wav = fftshift(fft(output_sin_wav, 500));

f3 = linspace(-fs1/2, fs1/2, 500);
 figure(3); plot(f3, abs(fft_sin_wav));
figure(4); plot(f3, abs(fft_output_sin_wav));

% Comment on the magnitude of output signal
eigen_value = abs(fft_output_sin_wav) / abs(fft_sin_wav); % 0.5379

% Find the output sequence when the input to the FIR h(n) is one of
% the audio files. Choose the size of your input sequence appropriately.

[y1, fs2] = audioread('');

audio_output = conv(y1, h_n);

f4 = linspace(-fs2/2, fs2/2)