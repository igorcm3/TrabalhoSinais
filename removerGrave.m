function removerGrave = removerGrave(x, Fs)

     y = bandstop(x,[1 500],Fs);
 
     figure(1)
     bandstop(x,[1 10000],Fs)
    
%     soundsc(y,Fs);
%     hold on
    
removerGrave = y;
