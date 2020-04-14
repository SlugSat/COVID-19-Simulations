close all;
clear all;
clc;
% time array
t = linspace(0,63072000,63072000);
temp = randi([-40 85], 1,length(t))+zeros(1, length(t));

% Frequency Aging Variables/Scenarios
[a_t, b_t, c_t, Max, Min] = frequency_aging(t);

% Plots
figure;
plot(t, a_t, 'g');
hold on
plot(t, b_t, 'b');
plot(t, c_t, 'y');
plot(t, Max, 'r--');
plot(t, Min, 'r--');
ylim([-2 2]);
xlim([1 63072000]);
title("Frequency Aging");
ylabel("Frequency Aging Deviation [ppm]");
xlabel("Time [seconds]");
legend("Stress Dominant", "Contamination Dominant", "Sum of Both", "Linear Case");

function [a_t, b_t, c_t, Max, Min] = frequency_aging(t)
% Frequency Aging with Stress as Dominating Factor
x_s = 3.017*10^-2;
a_t = x_s*log(0.5*t + 1);

% Frequency Aging with Contamination as Dominating Factor
x_c = 4.115*10^-2;
b_t = -x_c*log(0.006*t +1);

% The Sum of Both Equations
c_t = a_t + b_t;

% Linear Case 
Max = 1/length(t).* t;
Min = -1/length(t).* t;
end

function
T = 120;
f = 1/T;
freq_stab_curve = 0.28*sin(2*pi*f.*(temp + 35));

% Frequency Stability + Frequency Tolerance
freq_drift_max = freq_stab_curve + 0.5;
freq_drift_min = freq_stab_curve - 0.5;

% Actual Total Short term Stability
freq_drift_temp = zeros(1, length(temp));
ii = 1;
while ii <= length(temp)
    freq_drift_temp(ii) = freq_stab_curve(ii) + 0.01*randi([-50 50]); 
    ii = ii +1;
end

total_min = 0.78*(ones(1,length(temp)));
total_max = -0.78*(ones(1,length(temp)));

freq_drift_rand = zeros(1, length(temp));
ii = 1;
while ii <= length(temp)
    freq_drift_rand(ii) = 0.0078*randi([-100 100]);
    ii = ii+1;
end

end