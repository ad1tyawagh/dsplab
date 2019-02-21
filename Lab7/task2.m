% Find the frequency response of first order IIR digital filters.
alpha = 0.4;

num = ((1-alpha)/2)* [1 1];
den = [1 -0.4];

freqz(num, den);

% Compare the magnitude and phase response with FIR filters.

% Design a second order IIR bandpass filter with center frequency 0.4?
% and 3-dB bandwidth of 0.1?. Use Matlab function iirpeak.

iirBandPass = iirpeak(0.4, 0.1);
freqz(iirBandPass,1);
% Design a second order IIR bandstop filter with center frequency 0.4?
% and 3-dB bandwidth of 0.1?. Use Matlab function iirnotch.

iirBandStop = iirnotch(0.4, 0.1);
freqz(iirnotch,1);
% Design a comb filter with a 3-dB bandwith of 0.2?. Use Matlab
% function iircomb.

filterCoeff = iircomb(1, 0.2);
freqz(iircomb,1);