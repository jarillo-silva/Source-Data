function Ma = GenAw (M_usuario, V_usuario, Vtiempo, Vsecc, Vclase, Dat)
% 20/05/2024 funcion GenAw
% Funcion secundaria para el analizar señales EEG con el Analisis multiresolucion
% utilizada por MainMREEGv3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Extraer el archivo del usuario
% 2. Realizar la transformada wavelet a los datos
% 3. Extraer las clases seleccionadas
% 4. Aplicar ventaneo a las clases
% 5. Realizar el muestre con el traslape
% 6. Extraer las caracteristicas a cada muestra
% M_usuario matriz de caracteres con la lista de archivos a cargar
% V_usuario Vector de configuracion de usuarios, usuarios a seleccionar
% Vtiempo Vector de Marca general del experimento en segundos
% Vsecc Vs Vector de seleccion de clases
% Vclase Vector de clases
% Dat variable de estructura con variables de configuracion:
    % Dat.Fs freccuencia de muestreo de los datos a analizar 
    %Dat.e número de electrodos
    %Dat.ventana tamaño de ventana en segundos
    %Dat.muestra tamaño de la muestra en segundos  muestra<<ventana
    %Dat.traslape porcentaje de traslape entre las muestras [0, 0.5]; 
    %Dat.N_Des_Wavelet Nivel de resolucion
    %Dat.tipo_wavelet tipo de wavelet 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[f,c] = size(M_usuario);
% Preparando la Matriz
n = Vtiempo(1,end)*Dat.Fs;
ban1 = 0; %variable bandera
ban2 = 0; %variable bandera
Mv = 0; %variable de inicializacion
M_u = 0; %variable de inicializacion
a = 0; %variable de inicializacion
% vector de tiempo no utilizado
%tiempo = [0:1/Dat.Fs:Vtiempo(1,end)-1/Dat.Fs]'; 
for i = 1:f
    if V_usuario(1,i) == 1
        x = load(M_usuario(i,:));
        xo = x.do(:,1:n)';
        xw = DescBandMRnE(xo',Dat.N_Des_Wavelet,Dat.tipo_wavelet)';
        % Ventaneo
        [fv,cv] = size(Vtiempo);
        for j = 1:cv
            if Vsecc(1,j) == 1
                xx = (Vtiempo(1,j)-Dat.ventana)*Dat.Fs+1;
                xy = Vtiempo(1,j)*Dat.Fs;
                m = muestreo(xw(xx:xy,:),Dat.muestra, Dat.traslape, Dat.Fs);
                [fm, cm] = size(m);
                mc = Vclase(1,j)*ones(fm,1);
                a = [mc , m];
                if ban1 == 0
                    [fb,fc] = size(a);
                    Mv = zeros(1,fc);
                    ban1 = 1;
                end
                Mv = [Mv; a];
            end            
        end
        Mv = Mv(2:end,:);
        if ban2 == 0
            [fb,fc] = size(Mv);
            M_u = zeros(1,fc);
            ban2 = 1;
        end
        M_u = [M_u; Mv];
        %inicializando
        ban1 = 0;
    end        
end

Ma = M_u(2:end,:); % Regresa la matriz de trabajo
