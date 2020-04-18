clc; clear; 
close all
VCOs;

%%
simt = 1/100000;
sampt = 5e-10;

%% 
% NOTE: 'To Workspace' format: 'Structure With Time'

out = sim('VCOs');

load('VCOtofile.mat')

% time = out.VCOsimout.time(:,1);
% amp = out.VCOsimout.signals.values(:,1);


%% basic 10log(x) vs 20log(y)

plot(10*log10(abs(tout2)),20*log10(abs(VCOsimout)),'-o')
legend('VCO')
hold on


%% example

% m = length(amp); 
% n = pow2(nextpow2(m));
% y = fft(amp,n);
% 
% fs = 30; %% not sure how to calculate this
% 
% f = (0:n-1)*(fs/n)/10; % frequency vector
% power = abs(y).^2/n;   % power spectrum      
% plot(f(1:floor(n/2)),power(1:floor(n/2)))
% xlabel('Frequency')
% ylabel('Power')



%% refs

% Fs = 1000; % sampling rate of 1000 Hz
% t = 0:1/Fs:1-1/Fs;
% x = cos(2*pi*100*t)+randn(size(t));
% xdft = fft(x); 
% xdft = xdft(1:length(x)/2+1);
% DF = Fs/length(x); % frequency increment
% freqvec = 0:DF:Fs/2;
% plot(freqvec,abs(xdft))


% fft_ratio = VCOsimout ./ tout2 % note the dot
% subplot(2,1,1)
% semilogx(20*log10(abs(fft_ratio)))
% subplot(2,1,2)
% semilogx(plot((180/pi)*angle(fft_ratio))


