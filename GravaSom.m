function gravar = GravaSom(Fs, nBits, nChannels, ID, tempoGravacao)
% strcat = concatena strings,  int2str= cast de inteiro para string
recObj = audiorecorder(Fs,nBits,nChannels,ID);
disp('Fale algo para ser gravado!')
disp(strcat('gravando por: ',' ',int2str(tempoGravacao),' segundos'));
recordblocking(recObj,tempoGravacao );
for i=0:tempoGravacao
 disp(strcat('Gravando... ',int2str(i)));
end;
disp('Fim da gravação!.');
gravar = recObj;
%gravar = play(recObj);
end