function r0 = seeing_to_r0 (seeing, wavelength)
%{
Calculates r0 from seeing
    Inputs:
        seeing: seeing angle in arcseconds
        wavelength:  in meters
    Outputs:
        r0 : Fried's parameter in cm

Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}
r0 = 0.98*wavelength/(seeing*pi/(180*3600));
end
