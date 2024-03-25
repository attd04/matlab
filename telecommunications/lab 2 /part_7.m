% telecommunications lab 2, task 7

M_values = 2:6; % number of signals to sum

% generate uniformly distruted signals & sum them
for M = M_values

    % generate M signals evenly distributed
    signals = rand(M, 100000); % 100000 samples for each sig

    % sum signals
    summed_signals = sum(signals);

    % plot histogram of sum of signals
    figure;
    histogram(summed_signals, 'Normalization','probability');
    title(sprintf('histogram of summed signals (M=%d)', M));
    xlabel('value');
    ylabel('probability');
end


