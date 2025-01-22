close all
clear all
clc
% 20/05/2024 funcion MainMREEGv3
% 18/04/2024 funcion MainMREEGv2
% 17/09/2021 Funcion MainMREEGv1
% Funcion principal para el analizar señales EEG con el Analisis multiresolucion

% ********************************************************************
% Bandas MReeg Hz
% Delta         0.0 -  3.5
% Theta         3.5 -  7.0
% Alpha         7.0 - 13.0
% Beta         13.0 - 25.0
% Gamma        25.0 - 45.0

% ********************************************************************
% Datos en *.mat:
% 201905##  01-26
%Archivo explicativo: Leer 201901-26.txt

% tiempos de corte o marca:
% INICIA		TERMINA
% 00:30		5:50		VIDEO 1 
% 6:20		8:55		VIDEO 2  
% 9:30		12:46		VIDEO 3  
% 13:22		16:18		VIDEO 4  
% 16:52		18:52		VIDEO 5  
% 19:27		21:25		VIDEO 6  
% 22:02		27:35		VIDEO 7  

% Arreglo de salida
% y.to = to;          % vector de tiempo de datos
% y.do = do;          % matriz de datos
% y.co = co;          % matriz de contacto de electrodos
% y.mo = mo;          % matriz de marca
% y.mtx = mtx;        % matriz de marca en el tiempo
% y.mx = mx;          % matriz de marca en datos
% y.tx = tx;          % vector de tiempo de datos (potencia y banda)
% y.dx = dx;          % matriz de datos (potencia y banda)
% y.te = te;          % vector de tiempo de datos (emociones)
% y.de = de;          % matriz de datos (emociones)
% ********************************************************************

% ********************************************************************
% seccion de carga de datos a analizar (formato estandar)
% M_us matriz de caracteres donde se almacena la lista de archivos
% a cargar
% ********************************************************************
M_us = ['20190501.mat'; '20190502.mat'; '20190503.mat'; '20190504.mat'; ...
     '20190505.mat'; '20190506.mat'; '20190507.mat'; '20190508.mat'; ...
     '20190509.mat'; '20190510.mat'; '20190511.mat'; '20190512.mat'; ...
     '20190513.mat'; '20190514.mat'; '20190515.mat'; '20190516.mat'; ...
     '20190517.mat'; '20190518.mat'; '20190519.mat'; '20190520.mat'; ...
     '20190521.mat'; '20190522.mat'; '20190523.mat'; '20190524.mat'; ...
     '20190525.mat'; '20190526.mat'];
% **********************************************************************
% Nota: Se debe omitir el archivo 21, no es apto para el proceso de analisis
% V_us Vector de configuracion de usuarios
V_us = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1,...
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...
        0, 1, 1, 1, 1, 1];
% V_us = [0, 1, 0, 0, 1, 0, 0, 0, 0, 0,...
%         0, 0, 0, 0, 0, 0, 0, 0, 0, 0,...
%         0, 0, 0, 0, 0, 0];
% Vt Vector de Marca general del experimento en segundos
Vt = [32 350 535 766 978 1132 1285 1655];
% Vs Vector de seleccion de clases
Vs = [0 1 1 1 1 1 1 1];
% Vc Vector de clases
Vc = [2 0 1 0 1 0 1 0]; 

% Datos en estructura:
    % freccuencia de muestreo de los datos a analizar
    Fs = 128;
    % número de electrodo
    e = 14;
    % vectaneo
    ventana = 80;   % tamaño de ventana en segundos
    % muestra
    muestra = 50;    % tamaño de la muestra en segundos  muestra<<ventana
    % traslape
    traslape = 0.0; % porcentaje de traslape entre las muestras [0, 0.5];
    % Nivel de resolucion
    N_Des_Wavelet = 4;  % No modificable
    % tipo de wavelet 
    tipo_wavelet = 'coif5';
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
Dat.Fs = Fs; 
Dat.e = e;
Dat.ventana = ventana;
Dat.muestra = muestra;
Dat.traslape = traslape;
Dat.tipo_wavelet = tipo_wavelet;
Dat.N_Des_Wavelet = N_Des_Wavelet;

% Se manda a crear la matriz de analisis con la funcion GenAw
M = GenAw (M_us, V_us, Vt, Vs, Vc, Dat);
