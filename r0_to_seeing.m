function seeing = r0_to_seeing(r0, wavelength)
%{
    Calculates the seeing angle from r0. Basically is wavelength/r0
    converted to arcsecs
    Inputs:
        r0 : Fried's parameter in cm
        lamda : wavelength
    Returns:
        seeing angle in arcseconds

From: Hardy, J. W. (1998). Adaptive optics for astronomical telescopes (Vol. 16). Oxford University Press on Demand.

Nov, 2021. sergio.bonaque.gonzalez@gmail.com
%}

seeing = (0.98*wavelength/r0)*180*3600/pi;
end