function somReamostrado = reamostarSinal(som,p, q)

% reamostra o som gerando uma nova frequencia  de amostragem
novoSom = resample(som,p,q);
somReamostrado = novoSom;
disp('Som reamostrado!.');

%OBS: resample applies an antialiasing FIR lowpass filter to "som"

end