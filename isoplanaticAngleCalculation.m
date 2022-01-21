function isoplanaticAngle = isoplanaticAngleCalculation(cn2, h, wavelength)
%{
Calculates the isoplanatic angle from the Cn2 profile.
It equals the time interval over which the rms-phase distortion at a point due to turbulence is 1 radian. This is equivalent to stating that the coherence time equals 0.314 times the ratio of the Fried parameter to the mean velocity of the turbulent medium
    Inputs:
        cn2 : Cn2 profile in m^2/3
        h : Altitude levels of cn2 profile in m
        wavelength : in meters
    Outputs:
        isoplanaticAngle = isoplanatic angle in arcseconds

Adapted from: M. J. Townson, O. J. D. Farley, G. Orban de Xivry, J. Osborn, and A. P. Reeves, "AOtools: a Python package for adaptive optics modelling and analysis," Opt. Express 27, 31316-31329 (2019)

Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}
Jh = (cn2*(h^(5./3.)));
isoplanaticAngle = (0.057*wavelength^(6/5)*Jh^(-3/5)*180*3600/pi);
end
