clc; clearvars; 
close all
PLL_Sim_Rev0;

%%
simt = 1/100000;
sampt = 5e-10;
C_iss = 0.1;
R = 450;
t_p = 1e-9;
V_DD = 5;

%% Load Simulink Data

out = sim('PLL_Sim_Rev0');

load('PLLtofile.mat');

% sizeOfMatrix = size(out.tout, 1)

temp = load('PLLtofile.mat');

%% Active Plot
% NOTE: 'To Workspace' format: 'Timeseries'

% for i = 1:size(out.tout, 1) % count number of rows for time
%     
% %subplot(2,1,1)
% plot(out.VCOsimout,'-o')
% %xlim([(out.tout(i,1) - 0.001) ((out.tout(i, 1) + 0.1))]); % Keep most recent data point off the edge of plot window
% legend('VCOsimout')
% %hold on
% draw now
% pause(0.2)
% % subplot(2,1,2)
% % plot(VCOtofile,'-o')
% % legend('VCOtofile')
% end

%% Use findpeaks() to calculate frequency 
% NOTE: 'To Workspace' format: 'Structure With Time'

% time = out.VCOsimout.time(:,1);
% amp = out.VCOsimout.signals.values(:,1);
% [x, y] = findpeaks(amp, time,'Annotate','extents');
% 
% freq = (y(2) - y(1))^(-1)

subplot(2, 1, 1)
plot(tout2, PLLsimout)
xlim([0 simt/5]);
xlabel('time')
ylabel('PLL Amplitude')
legend('PLLsimout')
hold on

subplot(2, 1, 2)
plot(tout2, PLLsimout)
xlim([3*simt/5 (4*simt/5)]);
xlabel('time')
ylabel('PLL Amplitude')
legend('PLLsimout')
hold on

% plot(y(1), x(1), '-o');
% hold on
% 
% plot(y(2), x(2), '-o');
% hold on