function retornoPlotGraficos = plotGraficos(x,fs)


%% Tempo
dt = 1/fs;
    t = 0:dt:(length(x)*dt)-dt;
    figure(1)
    plot(t,x); xlabel('Seconds'); ylabel('Amplitude');
    title('Domínio do Tempo')
    figure(2)
    plot(psd(spectrum.periodogram,x,'Fs',fs,'NFFT',length(x)));
    title('Domínio da Frequência')


%% Frequencia
N = length(x);

X_mags = abs(fft(x));
bin_vals = [0 : N-1];
fax_Hz = bin_vals*fs/N;
N_2 = ceil(N/2);
figure(3)
plot(fax_Hz(1:N_2), X_mags(1:N_2))
xlabel('Frequency (Hz)')
ylabel('Magnitude');
title('Espectro de magnitude de um lado (Hz)');
axis tight