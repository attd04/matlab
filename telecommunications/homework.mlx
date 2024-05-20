% Autumn Tiede EIRfuc-22
% 20222182

% ----------------------------

% 2. Check that the signals 
% 𝑠1(𝑡) = 𝐴𝑠𝑖𝑛 (2𝜋𝑓𝑡 + (pi/4))
% and 𝑠2(𝑡) = 𝐴𝑠𝑖𝑛 (2𝜋𝑓𝑡 + (3𝜋/4)) are orthogonal to each other.
% Signals duration: 1 second
T = 1;
f = 20222182;
A = 20222183;

s1 = @(t) A * sin((2*pi*f*t) + (pi / 4));
s2 = @(t) A * sin((2*pi*f*t) + ((3*pi) / 4));

disp('TASK 2: RESULT OF INTEGRAL 0 to T OF s1 and s2')
result2 = integral(@(t) s1(t) .* s2(t), 0, T)

% if zero(ish) - orthagonal
if result2 < 1e-10
    disp('orthogonal')

else
    disp('not orthogonal')

end
disp('-----------------------------------')

% ----------------------------

% 3. The distance between the transmitter 
% and receiver is X km. 
% Radio frequency f = 2.4 GHz.
% a) Calculate the signal attenuation between 
% transmitter and receiver if there is free
% space between them (no obstructions).

% b) Transmitter power 𝑃𝑡𝑥 = 33 dBm. 
% Calculate the signal power at the receiver input
% if the transmitter and receiver antennas are 
% ideal isotropic antennas.

% PART 3A
X = 83;
f3 = 2400; %MHz

disp('TASK 3A: RESULT OF SIGNAL ATTENUATION W/ FREE SPACE [dB]')
fspl_free_space = 32.45 + 20*log10(f3) + 20*log10(X)

% PART 3B
Ptx = 33;

disp('TASK 3B: RESULT OF SIGNAL POWER @ RECIEVER OF ISOTROPIC ANTENNAS [dBm]')
Prx = Ptx - fspl_free_space

disp('-----------------------------------')
% ----------------------------

% 4. We want to send the message "aut"
% a) Convert these characters to ASCII binary code.
characters = 'aut';
characters_double = double(characters);

disp("TASK 4A: CONVERT 'aut' TO BINARY")
chars_binary = dec2bin(characters_double)

% b) Calculate the CRC control bit sequence for each character. 
% Generator polynomial: 𝐺(𝑥) = 𝑥^4 + 𝑥^2 + 1
gen_poly = [1 0 1 0 1];

% function @ end

crc_bits = zeros(size(chars_binary, 1), length(gen_poly) - 1);

for i = 1:size(chars_binary, 1)
    % binary string to binary vector
    data = chars_binary(i, :) - '0';
    crc_bits(i, :) = calculate_crc(data, gen_poly);
end

disp('TASK 4B: RESULTS OF CALCULATING CRC BITS FOR EACH CHARACTER');
for i = 1:size(chars_binary, 1)
    fprintf('%c CRC: %s\n', characters(i), num2str(crc_bits(i, :)));
end


% c) How many nPSK signals will it take to transmit 
% the entire message with the CRC?
% Choose the n closest to your Study Book No. last number.
% n = 2, 4, or 8. 
n = 8;

message = [];

for i = 1:size(chars_binary, 1)
    message = [message, chars_binary(i, :) - '0', crc_bits(i, :)];
end

message_size = length(message);

disp('TASK 4C: NUMBER OF nPSK SIGNALS NEEDED TO TRANSMIT MESSAGE W/ CRC')
nPSK_signals = ceil(message_size / (log2(n)))


% function for 4B ----------

function crc = calculate_crc(data, gen_poly)
    data = [data zeros(1, length(gen_poly) - 1)];
    
    % division
    for i = 1:length(data) - length(gen_poly) + 1
        if data(i) == 1
            data(i:i+length(gen_poly)-1) = xor(data(i:i+length(gen_poly)-1), gen_poly);
        end
    end
    
    crc = data(end-length(gen_poly)+2:end);
end


