clear all;
close all;
clc;

% Gravando voz 

% Variaveis fixas testes grava��o
Fs = 44100 ;  %freq padrao  captura de bits
nBits = 16 ; % bits para grava��o
nChannels = 2 ; % 1= mono, 2= stereo 
ID = -1; % default audio input device  
% Menu com switch case
while 1

op = menu('Informe a op��o:', '1- Gravar', '2- Reproduzir','3- Sair');

if (op==3)
    clc;
    disp('Programa finalizado!');
    break;
end;

switch op
    case 1
        %Grava o audio do microfone
        clc;
        tempogravacao = input('Informe por quanto tempo ser� gravado: ');
        som =GravaSom(Fs, nBits, nChannels,ID,tempogravacao);
    case 2
        % Reproduz som gravado
        clc;
        reproduzSom(som);
    otherwise
        disp('Op��o inv�lida');
end;

end
