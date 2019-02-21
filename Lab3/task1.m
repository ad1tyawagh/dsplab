% Generate a signal of sum of two sine waves of frequency of 100 Hz and 300
% Hz. Plot its time domain and corresponding frequency domain
% representation. Verify the plot by listening the waveform.

clear all;
fm1 = 100;
fm2 = 300;
fs = 800;
t = 1/fs;
t1 = 0 : t : 20-t;
sine_a = sin(2*pi*fm1*t1);
sine_b = sin(2*pi*fm2*t1);
sine_c = sine_a + sine_b;
figure(1);
plot(t1, sine_c), grid on;

f = linspace(-fs/2, fs/2, 16000);
fft_c = fft(sine_c);
figure(2);
plot(f, abs(fft_c));
sound(sine_c);

% Generate a square wave of fundamental frequency of 100 Hz. Plot its time
% domain and corresponding frequency domain representation. Verify the plot
% by listening the waveform.

clear all;
t = linspace(0, 1, 100);
f = linspace(-100/2, 100/2, 100);
sqr_a = square(50*t);
fft_a = fft(sqr_a);
figure(1), plot(t, sqr_a), grid on;
figure(2), plot(f, abs(fft_a)), grid on;

% Plot the sum of 10 odd harmonics of sine wave of fundamental frequency
% 100 Hz.

clear all;
f0 = 100;
t = linspace(1, 10, 400);
sine_a = zeroes(size())
for n = 1 : 1 : 10
    sine_a = sine_a + sin(2*pi*n*100*t);
end

plot()
% Download 1 audio file of human voice for simple words in *.wav format from
% the website: http://www.pacdv.com/sounds/voices-1.html. Plot its
% time-domain and corresponding frequency domain representation.

clear all;
[y, fs] = audioread('am-i-totally-screwed-or.wav');
f = linspace(-fs/2, fs/2, 119190);
figure(1);
plot(y);
y_fft = abs(fft(y));
figure(2);
plot(f, y_fft);
% Download an audio file of peacock voice in *.wav format from the website:
% http://www.findsounds.com/ISAPI/search.dll?keywords=peacock. Plot its
% time-domain and corresponding frequency domain representation.

clear all;
[y, fs] = audioread('peacock_sounds_1.mp3');
f = linspace(-fs/2, fs/2, 222960);
figure(1);
plot(y);
y_fft = abs(fft(y));
figure(2);
plot(f, y_fft);