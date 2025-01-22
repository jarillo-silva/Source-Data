function y = DescBandMRnE(x,n,fw)
% 20/05/2024 funcion DescBandMRnE
% Funcion secundaria para el analizar señales EEG con el Analisis multiresolucion
% utilizada por MainMREEGv3
% Creado para la version v2.0 19-10-2018

% Funcion que descompone en n-resoluciones una matriz con n-señales
% mediante una wavelet
% donde:
% x[señales][datos] matriz que contiene las n-señales a descomponer
% n nivel de resolucion
% fam_wavelet familia wavelet a utilizar
[f,c] = size(x);

y = zeros(1,c);

for i=1:f
    y = [y; DescBandMR(x(i,:),n,fw)];
end
y = y(2:end,:);

%  Available family short names are:
%     'haar'   : Haar wavelet.
%     'db'     : Daubechies wavelets.
%     'sym'    : Symlets.
%     'coif'   : Coiflets.
%     'bior'   : Biorthogonal wavelets.
%     'rbio'   : Reverse biorthogonal wavelets.
%     'meyr'   : Meyer wavelet.
%     'dmey'   : Discrete Meyer wavelet.
%     'gaus'   : Gaussian wavelets.
%     'mexh'   : Mexican hat wavelet.
%     'morl'   : Morlet wavelet.
%     'cgau'   : Complex Gaussian wavelets.
%     'cmor'   : Complex Morlet wavelets.
%     'shan'   : Complex Shannon wavelets.
%     'fbsp'   : Complex Frequency B-spline wavelets.
%     'fk'     : Fejer-Korovkin orthogonal wavelets