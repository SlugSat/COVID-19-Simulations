
clc; clear; 
close all
VCO_PN;

set_param('ex_ToWorkspace_ToFile/To Workspace',...
    'VariableName','simoutToWorkspace')

set_param('ex_ToWorkspace_ToFile/To File',...
    'FileName','simoutToFile.mat',...
    'MatrixName','simoutToFileVariable')

out = sim('ex_ToWorkspace_ToFile');

load('simoutToFile.mat')

subplot(2,1,1)
plot(out.simoutToWorkspace,'-o')
legend('simoutToWorkspace')

subplot(2,1,2)
plot(simoutToFileVariable,'-o')
legend('simoutToFileVariable')


% freq = [10 20 30 40 50 60];
% dBm = [0 -10 -20 -30 -40 -50];
% 
% plot(freq, dBm, 'o');
% xlabel('Frequency [MHz]');
% ylabel('dBm');
% title('dummy plot');
% 
% grid on
% grid minor
% 
% hold on
% 
% plot(-dBm, freq);

%scatter(freq, dBm);
