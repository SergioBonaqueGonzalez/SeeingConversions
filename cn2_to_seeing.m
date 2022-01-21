function seeing = cn2_to_seeing(cn2, wavelength)
%{
    Calculates the seeing angle from the integrated Cn2 value
    Inputs:
        cn2 : integrated Cn2 value in m^2/3
        wavelength : in meters
    Outputs:
        seeing angle in arcseconds
        
Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}
r0 = cn2_to_r0(cn2,wavelength);
seeing = r0_to_seeing(r0,wavelength);
end
