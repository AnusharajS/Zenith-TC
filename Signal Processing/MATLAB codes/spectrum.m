clc;
clear all;
close all;
% Generate a signal
Fs = 1000;          % Sampling frequency
t = 0:1/Fs:1;       % Time vector
f1 = 50;            % Frequency of the signal
x = sin(2*pi*f1*t); % Sinusoidal signal
% Compute the spectrum
X = fft(x);

% Take the magnitude of the spectrum
magnitude_spectrum = abs(X);

% Plot the magnitude spectrum
frequencies = (0:length(X)-1) * Fs / length(X);
plot(frequencies, magnitude_spectrum);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum');

% Calculate the envelope (optional)
envelope = smooth(magnitude_spectrum, 20); % Smoothing with a window size of 20
hold on;
plot(frequencies, envelope, 'r', 'LineWidth', 2);
legend('Magnitude Spectrum', 'Envelope');