clc; clear; 
close all
VCOs;

%% Load simulink data
% NOTE: 'To Workspace' format: 'Structure With Time'

out = sim('VCOs'); %stops script until sim finishes running

load('VCOtofile.mat'); 

time = out.VCOsimout.time(:,1);
amp = out.VCOsimout.signals.values(:,1);

% Vc = 4;
% myParam = Simulink.Parameter(2)
% myObject = Simulink.Parameter(Vc)


%% Create a figure for the GUI and configure the axes for displaying the step response.

f = figure;
% ax = axes('Time',f,'position',[0.13 0.39  0.77 0.54]);
h = plot(time, amp);
xlabel('time')
ylabel('VCO Amplitude')


Vc = 2.5; % Control voltage

% setoptions(h,'XLim',[0,10],'YLim',[0,2]);

%% Add the slider and slider label text to the figure.
b = uicontrol('Parent',f,'Style','slider','Position',[81,54,419,23],...
              'value', Vc, 'min',0, 'max',5);
bgcolor = f.Color;
bl1 = uicontrol('Parent',f,'Style','text','Position',[50,54,23,23],...
                'String','0','BackgroundColor',bgcolor);
bl2 = uicontrol('Parent',f,'Style','text','Position',[500,54,23,23],...
                'String','5','BackgroundColor',bgcolor);
bl3 = uicontrol('Parent',f,'Style','text','Position',[240,25,100,23],...
                'String','VCO Control Voltage','BackgroundColor',bgcolor);
            
%% Set the callback that updates the step response plot as the damping ratio slider is moved.

b.Callback = @(es,ed) updateSystem(h,tf(wn^2,[1,2*(es.Value)*wn,wn^2])); 

% set_param('VCOs/Constant','Value', 'Vc')

















