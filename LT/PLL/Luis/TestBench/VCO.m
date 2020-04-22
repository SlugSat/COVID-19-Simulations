clc; clearvars; 
close all
VCOs;

%%
simt = 1/100000;
sampt = 1e-9;

%% Load Simulink Data

out = sim('VCOs');

% load('VCOtofile.mat');

% sizeOfMatrix = size(out.tout, 1)

temp = load('VCOtofile.mat');

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

subplot(2, 2, 1)
plot(tout2, VCOsimout)
xlim([0 (simt/35)]);
xlabel('time')
ylabel('VCO Amplitude')
legend('VCO frquency = xx.x')
hold on

subplot(2, 2, 2)
plot(tout2, VCOsimout)
xlim([(simt/35) ((simt/35)+(2*simt/35))]);
xlabel('time')
ylabel('VCO Amplitude')
legend('VCO frquency = xx.x')
hold on

subplot(2, 2, 3)
plot(tout2, VCOsimout)
xlim([(3*simt/35) ((3*simt/35)+(4*simt/50))]);
xlabel('time')
ylabel('VCO Amplitude')
legend('VCO frquency = xx.x')
hold on

subplot(2, 2, 4)
plot(tout2, VCOsimout)
xlim([(4*simt/50) ((4*simt/50)+(5*simt/50))]);
xlabel('time')
ylabel('VCO Amplitude')
legend('VCO frquency = xx.x')
hold on

% plot(y(1), x(1), '-o');
% hold on
% 
% plot(y(2), x(2), '-o');
% hold on






