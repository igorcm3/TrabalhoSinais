function removerGrave = removerGrave(x, Fs)

%     y = bandstop(x,[1 500],Fs);
% 
%     figure(1)
%     bandstop(x,[1 10000],Fs)

    index = length(x)

    y1 = wgn(index,1,0)
    
    y = y1+x;
    
%     soundsc(y,Fs);
%     hold on
    
removerGrave = y;
