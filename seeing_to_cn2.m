function cn2 = seeing_to_cn2(seeing, wavelength)
%{
Calculates the integrated Cn2 value from the seeing
    Inputs:
        seeing : seeing in arcseconds
        wavelength :  in meters
    Outputs:
        cn2 :integrated Cn2 value in m^2/3

Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}

r0 = seeing_to_r0(seeing,wavelength);
cn2 = r0_to_cn2(r0,wavelength);
end
