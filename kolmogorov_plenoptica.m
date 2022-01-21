function atmospherePhase = kolmogorov_plenoptica (dim, r0, mirrorDiameter, wavelength, sizeMult)
%{
The wave front phase generation is based in:
LANE, R. G., et al. Simulation of a Kolmogorov phase screen. Waves in random media, 1992, vol. 2, no 3, p. 209-224.

Inputs:
    dim : size of the phase in pixels to be built
    r0 : fried parameter of the atmosphere in meters
    mirrorDiameter : diameter of the telescope mirror in meters
    wavelength : in meters
    sizeMult : if a bigger phase screen is needed
Outputs:
    atmospherePhase : generated phase of size = (dim x sizeMult) x (dim x sizeMult) in meters


Adapted from Juan M. Trujillo-Sevilla. Nuevas técnicas de adquisición de light field y fase de frente de onda. PhD Thesis. http://riull.ull.es/xmlui/handle/915/7023

Jan, 2022. sergio.bonaque.gonzalez@gmail.com
%}

if nargin < 5
    sizeMult = 1;
end
pixelScale = round(r0*(sizeMult*dim)/(sizeMult*mirrorDiameter)); %size in pixels of the isoplanatic patch
if mod(pixelScale,2) == 0
    pixelScale = pixelScale + 1; %size of the isoplanatic patch must be odd
end

screen = turbulence_gen(0.5*sizeMult*dim);
screen = (screen-mean(screen(:)))/std(screen(:));

sampleStd = stdfilt(screen, ones(pixelScale, pixelScale));
sampleStd = mean(sampleStd(:));
screen = screen/sampleStd;

atmospherePhase = screen/(2*pi/wavelength);
end

function phasescreen = turbulence_gen(sz)
cx=(-sz:sz);
mx=(ones(2*sz+1,1)*cx).^2;
mr=sqrt(mx+transpose(mx));
psd=0.023*mr.^(-11/3);
if rem(length(psd),2) == 0
    psd(sz+0.5,sz+0.5)=0;
else
    psd(sz+1,sz+1)=0;
end
randomcoeffs=randn(2*sz+1)+1i*randn(2*sz+1);
phasescreen=real(fft2(fftshift(sqrt(psd).*randomcoeffs)));
phasescreen = imresize(phasescreen,[2*sz, 2*sz]);
end
