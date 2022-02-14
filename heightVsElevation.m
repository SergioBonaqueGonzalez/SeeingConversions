function turbulenceHeight = heightVsElevation(heightAtZenith, elevation)
%{
If initially the turbulence layer altitude has been defined at zenith, this
function calculates the effective turbulence layer altitude at
any other elevation angle of a telescope. 
    Inputs:
        heightAtZenith : height of the layer defined at zenith [meters]
        elevation :  elevation of the telescope in degrees
    Outputs:
        turbulenceHeight:effective turbulence layer altitude at the desired
        elevation in meters

Feb, 2022. sergio.bonaque.gonzalez@gmail.com
%}

turbulenceHeight = heightAtZenith/cosd(90-elevation);
end