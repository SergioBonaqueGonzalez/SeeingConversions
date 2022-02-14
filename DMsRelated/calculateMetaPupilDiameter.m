function metaPupilDiameter = calculateMetaPupilDiameter(EPD, height, FoV)
%{
    Calculates the metapupil diameter of a deformable mirror from EPD,
    height of the conjugated layer and FoV
    Inputs:
        EPD : entrance pupil diameter in meters
        height : height of the conjugated turbulence layer in meters
        FoV: circular field of view of the telescope (arcsec)
    Returns:
        metaPupilDiameter: diameter of the metapupil  in meters

Feb, 2022. sergio.bonaque.gonzalez@gmail.com
%}

FoV = FoV*(pi/(180*3600)); %arcsec to radians
metaPupilDiameter = EPD + 2 * height * tan(FoV/2);

end