function coherenceTime =  coherenceTimeCalculation(cn2, v, wavelength)
%{
    Calculates the coherence time from profiles of the Cn2 and wind velocity
    Intpus:
        cn2 : Cn2 profile in m^2/3
        v : profile of wind velocity, same altitude scale as cn2
        wavelength : in meters
    Returns:
        coherenceTime = coherence time in seconds
It is similar to: t0 = 0.314*r0/v, but using corrections of V_(5/3)
Adapted from: M. J. Townson, O. J. D. Farley, G. Orban de Xivry, J. Osborn, and A. P. Reeves, "AOtools: a Python package for adaptive optics modelling and analysis," Opt. Express 27, 31316-31329 (2019)

Nov, 2021. sergio.bonaque.gonzalez@gmail.com
%}

Jv = (cn2*(v^(5/3)));
coherenceTime = ((Jv^(-3/5))*0.057*wavelength^(6/5));
end
