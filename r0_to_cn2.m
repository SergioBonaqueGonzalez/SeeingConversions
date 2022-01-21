function cn2 = r0_to_cn2(r0, wavelength)
%{
Calculates integrated Cn2 value from Fried parameter (r0) at zenith angle
    Inputs:
        r0: in cm
    Outputs:
        cn2: integrated Cn2 value in m

Adapted from: M. J. Townson, O. J. D. Farley, G. Orban de Xivry, J. Osborn, and A. P. Reeves, "AOtools: a Python package for adaptive optics modelling and analysis," Opt. Express 27, 31316-31329 (2019)

Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}

cn2 = r0^(-5/3)/(0.423*(2*pi/wavelength)^2);
end
