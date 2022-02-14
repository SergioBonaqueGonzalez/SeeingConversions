function r0_i = r0_Vs_turbulenceLayer(r0, Cn)
%{
Rewrite a turbulence table originally expressed as Cn profile for a global
r0, as r0 for each turbulent layer.
    Inputs:
        r0 : r0 value
        Cn : vector containing Cn values for each layer
    Outputs:
        r0_i: r0 value for each layer

Feb, 2022. sergio.bonaque.gonzalez@gmail.com
%}
if (sum(Cn) - 100) ~= 0
    warning('sumation of Cn is not 100%')
end

r0_i = zeros(1,length(Cn));
for i = 1:length(Cn)
    r0_i(i) = ((Cn(i)/100)^(-3/5))* r0;
end

end
