%%%%%%%%%%%%%%%%%%%%
%Christopher Magat %
%ECE 129B          %
%PA Characteristics%
%%%%%%%%%%%%%%%%%%%%

close all
clear all
clc

%% Input Power Spectrum (dBm)

input = [-30:10];

%% Rev 3.0 / R1 = 47k Ohms / R2 = 300k Ohms / RE1 = 470 Ohms / RE2 = 470 Ohms
rev0 = [-22.54 -21.53 -20.52 -19.51 -18.51 -17.53 -16.51 -15.47 -14.48 -13.42 -12.41 -11.41 -10.43 -9.44 -8.46 -7.67 -6.69 -5.68 -4.8 -3.85 -2.94 -2.02 -1.12 -0.26 0.58 1.35 2.08 2.8 3.49 3.91 4.36 4.71 5.06 5.36 5.69 5.82 6.05 6.25 6.44 6.62 6.81];

gain0 = rev0 - input;
realGain0 = 7.5;
linearGain0 = realGain0*ones(1, length(input));
P1dBrev0 = gain0 - linearGain0;

figure(1);
plot(input, rev0, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.0');

grid on
grid minor
%% Rev 3.1 / R1 = 47k Ohms / R2 = 200k Ohms / RE1 = 470 Ohms / RE2 = 470 Ohms
rev1 = [-20.64 -19.65 -18.65 -17.67 -16.67 -15.70 -14.66 -13.65 -12.69 -11.69 -10.72 -9.79 -8.85 -7.94 -7.02 -6.54 -5.61 -4.70 -3.79 -2.92 -2.09 -1.25 -0.46 0.33 1.13 1.81 2.56 3.22 3.77 4.25 4.67 4.99 5.27 5.52 5.78 5.96 6.21 6.37 6.58 6.74 6.93];

gain1 = rev1 - input;
realGain1 = 9;
linearGain1 = realGain1*ones(1, length(input));
P1dBrev1 = gain1 - linearGain1;

figure(2);
plot(input, rev1, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.1');

grid on
grid minor
%% Rev 3.2 / R1 = 47k Ohms / R2 = 240k Ohms / RE1 = 470 Ohms / RE2 = 470 Ohms
rev2 = [-21.73 -20.75 -19.74 -18.76 -17.76 -16.77 -15.74 -14.71 -13.69 -12.69 -11.72 -10.75 -9.8 -8.82 -7.89 -6.97 -6 -5.06 -4.12 -3.21 -2.29 -1.45 -0.61 0.21 0.89 1.61 2.33 3.03 3.63 4.12 4.54 4.89 5.19 5.47 5.71 5.92 6.13 6.32 6.51 6.72 6.85];

gain2 = rev2 - input;
realGain2 = 8.2;
linearGain2 = realGain2*ones(1, length(input));
P1dBrev2 = gain2 - linearGain2;

figure(3);
plot(input, rev2, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.2');

grid on
grid minor
%% Rev 3.3 / R1 = 47k Ohms / R2 = 390k Ohms / RE1 = 470 Ohms / RE2 = 470 Ohms
rev3 = [-49.2 -48.2 -47.2 -46.26 -45.23 -44.2 -43.17 -42.11 -41.1 -40.02 -39.01 -38.01 -37 -36.23 -35.22 -34.29 -33.26 -32.21 -31.16 -30.13 -29.11 -28.07 -27.04 -26.01 -25.03 -23.95 -22.85 -22.09 -21.03 -20.01 -18.97 -17.95 -16.85 -15.7 -14.61 -13.67 -12.76 -11.94 -10.39 -9.62 -8.62];

gain3 = rev3 - input;
realGain3 = -19.2;
linearGain3 = realGain3*ones(1, length(input));
P1dBrev3 = gain3 - linearGain3;

figure(4);
plot(input, rev3, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.3');

grid on
grid minor
%% Rev 3.4 / R1 = 47k Ohms / R2 = 33k Ohms / RE1 = 100 Ohms / RE2 = 100 Ohms
rev4 = [-29.97 -28.96 -27.97 -26.99 -25.99 -25.05 -24 -22.95 -21.92 -20.89 -19.87 -18.81 -17.8 -16.82 -15.84 -14.73 -13.66 -12.56 -11.5 -10.94 -9.92 -8.87 -7.86 -6.82 -5.82 -4.95 -3.88 -2.87 -1.81 -0.77 0.31 1.33 1.94 2.94 3.97 4.97 5.96 6.92 7.92 8.88 9.8];

gain4 = rev4 - input;
realGain4 = 0.03;
linearGain4 = realGain4*ones(1, length(input));
P1dBrev4 = gain4 - linearGain4;

figure(5);
plot(input, rev4, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.4');

grid on
grid minor
%% Rev 3.5 / R1 = 47k Ohms / R2 = 33k Ohms / RE1 = 270 Ohms / RE2 = 270 Ohms
rev5 = [-28.55 -27.5 -26.5 -25.47 -24.46 -23.45 -22.47 -21.46 -20.43 -19.39 -18.33 -17.27 -16.25 -15.22 -14.16 -13.17 -12.1 -11.05 -9.93 -8.83 -7.74 -6.9 -5.83 -4.68 -3.57 -2.32 -1.32 -0.18 1 2.12 3.26 4.22 5.1 5.91 6.56 7.06 7.5 7.88 8.23 8.55 8.83];

gain5 = rev5 - input;
realGain5 = 1.45;
linearGain5 = realGain5*ones(1, length(input));
P1dBrev5 = gain5 - linearGain5;

figure(6);
plot(input, rev5, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.5');

grid on
grid minor
%% Rev 3.6 / R1 = 47k Ohms / R2 = 24k Ohms / RE1 = 270 Ohms / RE2 = 270 Ohms
rev6 = [-30.52 -29.46 -28.46 -27.47 -26.47 -25.47 -24.42 -23.36 -22.39 -21.24 -20.2 -19.16 -18.14 -17.09 -16.02 -15.11 -13.99 -12.87 -11.7 -10.55 -9.42 -8.23 -7.02 -5.75 -4.52 -3.12 -1.81 -0.86 0.42 1.69 2.94 4.12 5.14 5.92 6.59 7.12 7.57 7.95 8.27 8.61 8.87];

gain6 = rev6 - input;
realGain6 = -0.54;
linearGain6 = realGain6*ones(1, length(input));
P1dBrev6 = gain6 - linearGain6;

figure(7);
plot(input, rev6, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.6');

grid on
grid minor
%% Rev 3.7 / R1 = 47k Ohms / R2 = 33k Ohms / RE1 = 620 Ohms / RE2 = 620 Ohms
rev7 = [-27.23 -26.24 -25.22 -24.2 -23.24 -22.24 -21.17 -20.14 -19.1 -18.06 -17.18 -16.16 -15.17 -14.16 -13.11 -12.14 -11.08 -10.04 -9 -7.97 -6.96 -5.99 -5.01 -4.03 -3.08 -2.28 -1.37 -0.52 0.28 0.93 1.46 1.97 2.26 2.63 2.96 3.26 3.56 3.86 4.15 4.45 4.71];

gain7 = rev7 - input;
realGain7 = 2.77;
linearGain7 = realGain7*ones(1, length(input));
P1dBrev7 = gain7 - linearGain7;

figure(8);
plot(input, rev7, '-o', 'color', 'b', 'MarkerSize', 4, 'MarkerEdgeColor','k' , 'MarkerFaceColor', 'k');

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.7');

grid on
grid minor
%% Rev 3.0 to Rev 3.7

figure(9)
hold on

%Rev 3.3 is omitted from the plot

plot(input, rev0);
plot(input, rev1);
plot(input, rev2);
plot(input, rev4);
plot(input, rev5);
plot(input, rev6);
plot(input, rev7);

xlabel('Input Power [dBm]');
ylabel('Output Power [dBm]');
title('Output Power vs. Input Power of PA Rev 3.0 to 3.7');

legend('PA Rev 3.0', 'PA Rev 3.1', 'PA Rev 3.2', 'PA Rev 3.4', 'PA Rev 3.5', 'PA Rev 3.6', 'PA Rev 3.7');

grid on
grid minor

%% End

