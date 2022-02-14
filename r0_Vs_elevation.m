function r0_elevation = r0_Vs_elevation(r0, elevation)
%{
Recalculate the r0 according to the elevation angle of the telescope.
    Inputs:
        r0 : r0 value defined at zenith
        elevation : vector containing the desired elevations to be
        calculated
    Outputs:
        r0_elevation: the effective r0 at each elevation

Feb, 2022. sergio.bonaque.gonzalez@gmail.com
%}
r0_elevation = zeros(1,length(elevation));
for i= 1:length(elevation)
    if elevation(i) == 90
        r0_elevation(i) = r0;
    else
        r0_elevation(i) = r0 * (cosd(elevation(i)))^(3/5);
    end
end
