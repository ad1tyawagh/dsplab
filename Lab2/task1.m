% Read sample data(wav files)
% Plot the files.
% Scale the files by a facor of a (multiply amplitude)
% Delay by N (i.e y[n-N]
% Reverse y y[-n]
% upsample by a factor
% downsample by a factor

[y, Fs] = audioread('audio/bye.wav');
t = size(y);
plot(1,y);

% Amplitude scaling
y1 = 2*y;
sound(y,Fs,16);

% Add delay of 2 seconds
y2 = [zeros(88200,2); y]; % (2 second delay = add 2*Fs zeroes)
sound(y1, Fs, 16);

% Flip signal (y[-n])
y3 = flipud(y);
sound(y3,Fs,16);

