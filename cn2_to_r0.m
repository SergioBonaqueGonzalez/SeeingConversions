function r0 = cn2_to_r0(cn2, wavelength)
%{
Calculates Fried parameter (r0) from the integrated Cn2 value at zenith
angle
    Inputs:
        cn2: integrated Cn2 value in m^2/3
        wavelength : in meters
    Outputs:
        r0: in cm
From: Hardy, J. W. (1998). Adaptive optics for astronomical telescopes (Vol. 16). Oxford University Press on Demand.

Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}
r0=(0.423*(2*pi/wavelength)^2*cn2)^(-3/5);
