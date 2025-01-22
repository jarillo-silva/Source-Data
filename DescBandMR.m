function y = DescBandMR(x,n,fw)
% 20/05/2024 funcion DescBandMR
% Funcion secundaria de DescBandMRnE
% modificado para la version v2.0 19-10-2018
% Funcion que descompone en n-resoluciones una señal mediante una wavelet
% donde:
% x senal a descomponer
% n nivel de resolucion
% fw familia wavelet a utilizar


[f,c] = size(x);
[C,L] = wavedec(x,n,fw);

y = zeros(n+1,c);

for i=1:n
   y(n+2-i,:) = wrcoef('d',C,L,fw,i);  
end

y(1,:) = wrcoef('a',C,L,fw,n);

% 
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