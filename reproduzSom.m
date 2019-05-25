function reproduzir = reproduzSom(som, Fs)
disp('Reproduzindo...');
%antigo--> rteproduzia o objeto audiorecorder
%reproduzir = play(som);


%novo -> reproduz um array com informações do audiorecorder, esse array
%pode ser manipulado.
soundsc(som, Fs);
end