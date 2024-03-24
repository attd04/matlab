% telecommunications lab 2, task 2

std = 1; % standard deviation
mean = 0; % mean
Ns = [10, 100, 1000, 10000]; % array lengths

% generate & plot histograms for different array lengths
figure;
for i = 1:length(Ns)
    N = Ns(i);

    % generate normally distributed numbers w/ mean & std
    x = mean + std * randn(1,N);

    % plot histogram
    subplot(2,2,i);
    histogram(x, "normalization", 'probability');
    title(['histogram for N = ', num2str(N)]);
    xlabel('value');
    ylabel('proabbility');
end
