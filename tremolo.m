function tremoloRetorno = tremolo(somArray, Fs)

% read the sample waveform
index = 1:length(somArray);

% using a sin wave at the moment, in practice is usually a 
% triangle wave or a square wave or a cross between the two

Fc = 5;
alpha = 1.0;

trem=(1+ alpha*sin(2*pi*index*(Fc/Fs)))';    % sin(2pi*fa/fs)

y = trem.*somArray;
    
tremoloRetorno = y;