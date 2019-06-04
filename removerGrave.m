function removerGrave = removerGrave(x, Fs)

noise = 0.09 * randn(length(x), 1)
y = x + noise;

figure(4)
plot(x)
title('Som Original')

figure(5)
plot(noise)
title('Ruido Adicionado')
   
removerGrave = y;
