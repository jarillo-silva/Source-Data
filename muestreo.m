function Ms = muestreo (Mv, muestra, traslape, Fs)
% 20/05/2024 funcion muestro
% Funcion secundaria para GenAw
% funcion para muestreo con traslape

% Mv Matriz de datos
% muestra tamaño de la muestra en segundos
% traslape porcentaje de traslape [0, 0.5]
% Fs frecuencia de muestro de los datos

[f,c] = size(Mv);
m = muestra*Fs;
d = floor(traslape*m);
n = floor(f/(m-d));
sx = rem(f,m-d);
s = m-d;

ban1 = 0; %vaiable bandera
a = 0; %variable de inicializacion
b = 1; %variable de inicializacion
Ms = 0; %variable de inicializacion

for i = 1:n
    a = b+s-1;
    mce = CaractEmotive(Mv(b:a,:));
    if ban1 == 0
        [fb,fc] = size(mce);
        Ms = zeros(1,fc);
        ban1 = 1;
    end
    Ms = [Ms; mce];
    b = b + s - 1;
end
if sx ~= 0
    mce = CaractEmotive(Mv(b:end,:));
    Ms = [Ms; mce];    
end

Ms = Ms(2:end,:);
% p_real = d/m;
% muestreo.m = m;
% muestreo.d = d;
% muestreo.n = n;
% muestreo.sx = sx;
% muestreo.p_real = p_real;
% muestreo
