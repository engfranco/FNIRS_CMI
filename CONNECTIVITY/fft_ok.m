function [freqs,amplitude]=fft_ok(ts,sinal)
%Função que retorna a amplitude e faixa de frequênciacos
%da transformada de Fourier de um sinal baseado nos dados temporais
%Jeferson Vieira Flores
%16/11/2012

nn=length(sinal);


fs=1/ts;
amp_fft = abs(fft(sinal))/nn;
amplitude1 = fftshift(amp_fft);
amplitude = amplitude1((nn/2):end-1);
freqs = [0:nn/2-1]*fs/(nn);