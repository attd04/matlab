function fahrenheit = kelv2far(kelvin)
%
%   KELV2FAR(KELVIN) converts temperature from kelvin to 
%   fahrenheit using the formula:
%       fahrenheit = (kelvin * (9/5)) - 459.67
%
%   Inputs:
%   - KELVIN: temp in kelvin.
%
%   Outputs:
%   - FAHRENHEIT: temp in fahrenheit

%
%   Example:
%   fahrenheit = kelv2far(300); % Convert 300 kelvin to fahrenheit

    fahrenheit = (kelvin * (9/5)) - 459.67;
end
