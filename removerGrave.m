function removerGrave = reproduzSom(som, Fs)

Fs = 44100;
Ts = 1/Fs;
F1 = 10;
t = [0:Ts:10/F1];

x = 1*sin(2*pi*F1.*t)+1*sin(2*pi*2000.*t);%sinal senoidal de entrada
b = [0.08725683003816;0.08942864129752;  0.09113948989461;  0.09237322529222;...
    0.09311817439192;  0.09336727817114;  0.09311817439192;  0.09237322529222;...
    0.09113948989461;  0.08942864129752;  0.08725683003816];%coeficientes

M = length(b);%numero de coeficientes
n_total = length(x);

b_total = length(b);
x_buffer = zeros(length(b),1);

for n=1:n_total
        sum = 0;
        for k=1:b_total-1
            sum = sum + x_buffer(k)*b(b_total - k);
        end
        for k=1:b_total-1
            x_buffer(k) = x_buffer(k+1);
        end
        x_buffer(b_total) = x(n);
        y(n) = sum;
end

plot(t,x)
hold on
plot(t,y)