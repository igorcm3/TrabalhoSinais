[x,fs] = audioread('Crawling.wav');  % load the music and get the sampling frequency

length = size(x);  % get the length of the music file

a = 0.3;  % set the attenuation factor

delay = 0.38;

D = delay*fs;  % set the delay time in s

y = zeros(length);  % initialize the output music signal

for i = D + 1 : 1 : length;

	y(i) = x(i) + a*x(i-D);
end;

sound(y, fs);  % play the echo