function somReamostrado = reamostarSinal(som,p, q)
% strcat = concatena strings,  int2str= cast de inteiro para strin
%disp(strcat('gravando por: ',' ',int2str(tempoGravacao),' segundos'));
% reamostra o som dividindo a frequencia em que ele foi adquirido por uma
% nova frequencia 
novoSom = resample(som,p,q);
somReamostrado = novoSom;
disp('Som reamostrado!.');

%OBS: resample applies an antialiasing FIR lowpass filter to "som"

end