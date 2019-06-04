function ecoRetorno = eco(x, fs)

length = size(x);  % get the length of the music file

a = 0.9;  % set the attenuation factor

delay = 0.50;

D = delay*fs;  % set the delay time in s

y = zeros(length);  % initialize the output music signal

for i = D + 1 : 1 : length;

	y(i) = x(i) + a*x(i-D);
end;

figure(4)
plot(x)
title('Som Original')

ecoRetorno = y;