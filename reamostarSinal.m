function somReamostrado = reamostarSinal(som, divisaoFrequencia, Fs)
% strcat = concatena strings,  int2str= cast de inteiro para strin
%disp(strcat('gravando por: ',' ',int2str(tempoGravacao),' segundos'));
% reamostra o som dividindo a frequencia em que ele foi adquirido por uma
% nova frequencia 
y1 = resample(som,1,divisaoFrequencia);
t2 = (0:(length(y1)-1))*divisaoFrequencia/(1*Fs);

somReamostrado = t2;
%Fs1 = Fs/5;
%sounsc(y1,Fs1);
disp('Som reamostrado!.');
% %p = audioplayer(som, Fs)
% p.UserData = som;
% p.SampleRate = AtrasaAcelera*Fs;
% playblocking(p)
% somReamostrado = p.UserData;


end