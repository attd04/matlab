% Parameters
t = 0:1/1000:1; % generates time vector ranging from 0 to 1 second
                % and has a sampling interval of 1/1000 seconds

sine_wave = cos(2*pi*10*t); % computes values of a cosine wave      
              % with a frequency of 10 Hz using the time vector t


% Plot original sine wave
plot(t, sine_wave) % creates plot of sin wave against time vector

xlim([0 0.2]); % sets plot limits of the x-axis to 0 to 0.2 seconds

ylim([-2 2]); % sets plot limits of y-axis to -2 to 2 seconds

grid on; % turns on grid lines for the plot
hold on; % ensures commands apply to the existing plot


% Additive Gaussian noise
sine_noise = awgn(sine_wave, 10); % adding 10 dB white 
                     % gaussian noise to the sin signal


% Plot the signal with additive noise
plot(t, sine_noise); % creates plot of sin wave with noise
                     % against time vector

hold off; % turns of plot hold
title('Signal with Additive Gaussian Noise'); % adding title to plot
xlabel('Time (s)'); % adding x-axis label to plot
ylabel('Amplitude'); % adding y-axis label to plot


% Extract noise from the signal+noise mix
noise = sine_noise - sine_wave; % separates the noise from the signal
            % and creates variable with only noise


% Plot the Additive White Gaussian Noise
figure; % creating a figure for the plot

stem(noise, 'LineWidth', 1, 'Marker', 'o'); % plotting the graph
% making line width = 1 unit and the marker shape to a circle

grid on; % turning on grid lines

xlim([0 100]); % x-axis limit from 0 to 100
ylim([-2 1]); % y-azis limit from -2 to 1

title('Additive White Gaussian Noise'); % adding title for plot
xlabel('Sample'); % adding x-axis label
ylabel('Amplitude'); % adding y-axis label


% Evaluate spectral power density
figure; % creating a figure for the plot

periodogram(noise); % creating a graph for noise

grid on; % turns on grid lines for the plot

title('Spectral Power Density of Additive White Gaussian Noise');
% adding plot title


% Plot the histogram of noise distribution
figure; % create figure for the plot

histogram(noise, 40); % create a histogram using noise and 
% 40 'bins' as representation

grid on; % turning on grid lines

title('Distribution of Additive White Gaussian Noise Samples');
% add plot title
xlabel('Amplitude'); % add x-axis label
ylabel('Frequency'); % add y-axis label

% Create ten vectors with the same sine wave 
% but different noise realizations
sine1 = awgn(sine_wave, 10);
sine2 = awgn(sine_wave, 10);
sine3 = awgn(sine_wave, 10);
sine4 = awgn(sine_wave, 10);
% adds 10 dB white gaussian noise to the sin wave every time called

% Plot four signals with additive white Gaussian noise
figure; % add figure for the plot

plot(t, sine1, t, sine2, t, sine3, t, sine4); % creating plotted
% graoh of different variables

xlim([0 0.2]); % x-axis limit of 0 to 0.2 seconds
ylim([-2 2]); % y-axis limit of -2 to 2

grid on; % turn on grid lines
title('Four Signals with Additive White Gaussian Noise');
% adding title
xlabel('Time (s)'); % x-axis label
ylabel('Amplitude'); % y-axis label

% Average the ten vectors and analyze the result
sum_sine = (sine1 + sine2 + sine3 + sine4) ./ 4;
% calculates average of the signals 

figure; % add figure for the plot

plot(t, sum_sine); % plotting time sector and sum of sin waves

xlim([0 0.2]); % x-axis limit of 0 to 0.2 seconds
ylim([-2 2]); % y-axis limit of -2 to 2 

grid on; % grid lines on

title('Result of Averaging'); % graph title
xlabel('Time (s)'); % x-axis label
ylabel('Amplitude'); % y-axis label
