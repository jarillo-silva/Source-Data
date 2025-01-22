function y = CaractEmotive(x)

% 20/05/2024 funcion CaractEmotive
% funcion modificada por el ususario
% modificado para la version Emotive v1.00 01-08-2019



% % --------Parametro de Hjorth-----------
 x = x';
%  % actividad
size(x);
  %ac = mean(x);
%   mo = std(diff(xt))./std(xt);
% % % Complexity
% %  complexity = std(diff(diff(xt)))./std(diff(xt))./mobility;
% % % Asimetr�a
% %  skew = skewness(xt); 
% % % Kurtosis
%  kurt = kurtosis(xt);
%  
 tipo = 'log energy';
% %tipo = 'shannon';
 p= 0;
% %size(kurt)
% % Obteniendo caracter�sticas por cada electrodo
%% Electrodo F3
%Entropia
WgF3 = wentropy(x(15,:),tipo,p);
Wb1F3 = wentropy(x(13,:),tipo,p);
Wb2F3 = wentropy(x(14,:),tipo,p);
WalfaF3 = wentropy(x(12,:),tipo,p);
WthetaF3 = wentropy(x(11,:),tipo,p);
% Power
PgF3 = x(15,:);
Pb1F3 = x(13,:);
Pb2F3 = x(14,:);
PalfaF3 = x(12,:);
PthetaF3 = x(11,:);
% 
 WF3 = [Wb1F3;Wb2F3;WthetaF3;WalfaF3];

%% Electrodo F4
%Entropia
WgF4 = wentropy(x(60,:),tipo,p);
Wb1F4 = wentropy(x(58,:),tipo,p);
Wb2F4 = wentropy(x(59,:),tipo,p);
WalfaF4 = wentropy(x(57,:),tipo,p);
WthetaF4 = wentropy(x(56,:),tipo,p);

PgF4 = x(60,:);
Pb1F4 = x(58,:);
Pb2F4 = x(59,:);
PalfaF4 = x(57,:);
PthetaF4 = x(56,:);

WF4 = [Wb1F4;Wb2F4;WthetaF4;WalfaF4;WgF4];

PF4 = [Pb1F4;Pb2F4;PthetaF4];

%% Electrodo F7
%Entropia
WgF7 = wentropy(x(10,:),tipo,p);
Wb1F7 = wentropy(x(8,:),tipo,p);
Wb2F7 = wentropy(x(9,:),tipo,p);
WalfaF7 = wentropy(x(7,:),tipo,p);
WthetaF7 = wentropy(x(6,:),tipo,p);

WF7 = [Wb1F7;Wb2F7;WthetaF7;WalfaF7;WgF7];

%% Electrodo F8
%Entropia
WgF8 = wentropy(x(65,:),tipo,p);
Wb1F8 = wentropy(x(63,:),tipo,p);
Wb2F8 = wentropy(x(64,:),tipo,p);
WalfaF8 = wentropy(x(62,:),tipo,p);
WthetaF8 = wentropy(x(61,:),tipo,p);

WF8 = [Wb1F8;Wb2F8;WthetaF8;WalfaF8;WgF8];

%% Electrodo FC5
WgFC5 = wentropy(x(20,:),tipo,p);
Wb1FC5 = wentropy(x(18,:),tipo,p);
Wb2FC5 = wentropy(x(19,:),tipo,p);
WalfaFC5 = wentropy(x(17,:),tipo,p);
WthetaFC5 = wentropy(x(16,:),tipo,p);

PgFC5 = x(20,:);
Pb1FC5 = x(18,:);
Pb2FC5 = x(19,:);
PalfaFC5 = x(17,:);
PthetaFC5 = x(16,:);

WFC5 = [Wb1FC5;Wb2FC5;WthetaFC5;WalfaFC5;WgFC5];
PFC5 = [Pb1FC5;Pb2FC5;PthetaFC5];

%% Electrodo T8
WgT8 = wentropy(x(50,:),tipo,p); %(T8gama)
Wb1T8 =wentropy(x(48,:),tipo,p);
Wb2T8 = wentropy(x(49,:),tipo,p);
WalfaT8 = wentropy(x(47,:),tipo,p);
WthetaT8 = wentropy(x(46,:),tipo,p);

PgT8 = x(50,:);
Pb1T8 =x(48,:);
Pb2T8 = x(49,:);
PalfaT8 = x(47,:);
PthetaT8 = x(46,:);

WT8 = [Wb1T8;Wb2T8;WthetaT8;WalfaT8;WgT8];
PT8 = [Pb1T8;Pb2T8;PthetaT8];

%% Electrodo T7
WgT7 = wentropy(x(25,:),tipo,p);
Wb1T7 = wentropy(x(23,:),tipo,p);
Wb2T7 = wentropy(x(24,:),tipo,p);
WalfaT7 = wentropy(x(22,:),tipo,p);
WthetaT7 = wentropy(x(21,:),tipo,p);

PgT7 = x(25,:);
Pb1T7 = x(23,:);
Pb2T7 = x(24,:);
PalfaT7 = x(22,:);
PthetaT7 = x(21,:);

WT7 = [Wb1T7;Wb2T7;WthetaT7;WalfaT7;WgT7];
PT7 = [Pb1T7;Pb2T7;PthetaT7];

%% Electrodo P7

WgP7 = wentropy(x(30,:),tipo,p);
Wb1P7 = wentropy(x(28,:),tipo,p);
Wb2P7 = wentropy(x(29,:),tipo,p);
WalfaP7 = wentropy(x(27,:),tipo,p);
WthetaP7 = wentropy(x(26,:),tipo,p);

PgP7 = x(30,:);
Pb1P7 = x(28,:);
Pb2P7 = x(29,:);
PalfaP7 = x(27,:);
PthetaP7 = x(26,:);

WP7 = [Wb1P7;Wb2P7;WthetaP7;WalfaP7;WgP7];
PP7 = [Pb1P7;Pb2P7;PthetaP7];

%% Electrodo P8
WgP8 = wentropy(x(45,:),tipo,p);
Wb1P8 = wentropy(x(43,:),tipo,p);
Wb2P8 = wentropy(x(44,:),tipo,p);
WalfaP8 = wentropy(x(42,:),tipo,p);
WthetaP8 = wentropy(x(41,:),tipo,p);

PgP8 = x(45,:);
Pb1P8 = x(43,:);
Pb2P8 = x(44,:);
PalfaP8 = x(42,:);
PthetaP8 = x(41,:);

WP8 = [Wb1P8;Wb2P8;WthetaP8;WalfaP8;WgP8];
PP8 = [Pb1P8;Pb2P8;PthetaP8];

%% Electrodo O2
WgO2 = wentropy(x(40,:),tipo,p);
Wb1O2 = wentropy(x(38,:),tipo,p);
Wb2O2 = wentropy(x(39,:),tipo,p);
WalfaO2 = wentropy(x(37,:),tipo,p);
WthetaO2 = wentropy(x(36,:),tipo,p);

PgO2 = x(40,:);
Pb1O2 = x(38,:);
Pb2O2 = x(39,:);
PalfaO2 = x(37,:);
PthetaO2 = x(36,:);

WO2 = [Wb1O2;Wb2O2;WthetaO2;WalfaO2;WgO2];
PO2 = [Pb1O2;Pb2O2;PthetaO2];

%% Electrodo O1
WgO1 = wentropy(x(35,:),tipo,p);
Wb1O1 = wentropy(x(33,:),tipo,p);
Wb2O1 = wentropy(x(34,:),tipo,p);
WalfaO1 = wentropy(x(32,:),tipo,p);
WthetaO1 = wentropy(x(31,:),tipo,p);

PgO1 = x(35,:);
Pb1O1 = x(33,:);
Pb2O1 = x(34,:);
PalfaO1 = x(32,:);
PthetaO1 = x(31,:);

WO1 = [Wb1O1;Wb2O1;WthetaO1;WalfaO1;WgO1];
PO1 = [Pb1O1;Pb2O1;PthetaO1];

%% Electrodo AF3
WgAF3 = wentropy(x(5,:),tipo,p);
Wb1AF3 = wentropy(x(3,:),tipo,p);
Wb2AF3 = wentropy(x(4,:),tipo,p);
WalfaAF3 = wentropy(x(2,:),tipo,p);
WthetaAF3 = wentropy(x(1,:),tipo,p);

WAF3 = [Wb1AF3;Wb2AF3;WthetaAF3;WalfaAF3;WgAF3];

%% Electrodo AF4
WgAF4 = wentropy(x(65,:),tipo,p);
Wb1AF4 = wentropy(x(63,:),tipo,p);
Wb2AF4 = wentropy(x(64,:),tipo,p);
WalfaAF4 = wentropy(x(62,:),tipo,p);
WthetaAF4 = wentropy(x(61,:),tipo,p);

WAF4 = [Wb1AF4;Wb2AF4;WthetaAF4;WalfaAF4;WgAF4];

%% Electrodo FC5

WgFC5 = wentropy(x(20,:),tipo,p);
Wb1FC5 = wentropy(x(18,:),tipo,p);
Wb2FC5 = wentropy(x(19,:),tipo,p);
WalfaFC5 = wentropy(x(17,:),tipo,p);
WthetaFC5 = wentropy(x(16,:),tipo,p);

WFC5 = [Wb1FC5;Wb2FC5;WthetaFC5;WalfaFC5;WgFC5];

%% Electrodo FC6
WgFC6 = wentropy(x(55,:),tipo,p);
Wb1FC6 = wentropy(x(53,:),tipo,p);
Wb2FC6 = wentropy(x(54,:),tipo,p);
WalfaFC6 = wentropy(x(52,:),tipo,p);
WthetaFC6 = wentropy(x(51,:),tipo,p);

WFC6 = [Wb1FC6;Wb2FC6;WthetaFC6;WalfaFC6;WgFC6];

%% Vector de regreso
ETb1 = wentropy(x(48,:)./x(23,:),tipo,p);
ETb2 = wentropy(x(49,:)./x(24,:),tipo,p);
% ETg = wentropy(x(50,:)./x(25,:),tipo,p);
ETg = wentropy(x(25,:)./x(50,:),tipo,p);%(T7gama/T8gama)
ETg2 =  wentropy(x(25,:),tipo,p)./wentropy(x(50,:),tipo,p);
ETa = wentropy(x(47,:)./x(22,:),tipo,p);
 
 ET = [ETg;ETb2;ETb1;ETa];
 
 %%
 EPb1 = wentropy(x(28,:)./x(43,:),tipo,p);
 EPb2 = wentropy(x(29,:)./x(44,:),tipo,p);
 EPg = wentropy(x(30,:)./x(45,:),tipo,p); %(P7gama/P8gama)
 EPg2=  wentropy(x(30,:),tipo,p)./wentropy(x(45,:),tipo,p);
 EPa = wentropy(x(27,:)./x(42,:),tipo,p);
 
 EP = [EPb1;EPb2;EPg;EPa];
 
 %%
 
 EOb1 = wentropy(x(33,:)./x(38,:),tipo,p);
 EOb2 = wentropy(x(34,:)./x(39,:),tipo,p);
 EOg = wentropy(x(35,:)./x(40,:),tipo,p); % (O1gama/O2gama)
 EOg2 =  wentropy(x(35,:),tipo,p)./wentropy(x(40,:),tipo,p);
 EOa = wentropy(x(32,:)./x(37,:),tipo,p);
 
 EO = [EOb1;EOb2;EOg;EOa];
 %%
 EFb1 = wentropy(x(13,:)./x(58,:),tipo,p);
 EFb2 = wentropy(x(14,:)./x(59,:),tipo,p);
 EFg = wentropy(x(15,:)./x(60,:),tipo,p); % (F3gama/F4gama)
 EFg2 =  wentropy(x(15,:),tipo,p)./wentropy(x(60,:),tipo,p);
 EFa = wentropy(x(12,:)./x(57,:),tipo,p);
 
 EF = [EFb1;EFb2;EFg;EFa];
 %%
 EAFb1 = wentropy(x(3,:)./x(68,:),tipo,p);
 EAFb2 = wentropy(x(4,:)./x(69,:),tipo,p);
 EAFg = wentropy(x(5,:)./x(70,:),tipo,p); % (AF3gama/AF4gama)
 EAFg2 =  wentropy(x(5,:),tipo,p)./wentropy(x(70,:),tipo,p);
 EAFa = wentropy(x(2,:)./x(67,:),tipo,p);
 
 EAF = [EAFb1;EAFb2;EAFg;EAFa];
 %%
 EFFb1 = wentropy(x(8,:)./x(63,:),tipo,p);
 EFFb2 = wentropy(x(9,:)./x(64,:),tipo,p);
 EFFg = wentropy(x(10,:)./x(65,:),tipo,p); % (F7gama/F8gama)
 EFFg2 =  wentropy(x(10,:),tipo,p)./wentropy(x(65,:),tipo,p);
 EFFa = wentropy(x(6,:)./x(61,:),tipo,p);
 
 EFF = [EFFb1;EFFb2;EFFg;EFFa];
 %%
 EFCb1 = wentropy(x(18,:)./x(53,:),tipo,p);
 EFCb2 = wentropy(x(19,:)./x(54,:),tipo,p);
 EFCg = wentropy(x(20,:)./x(55,:),tipo,p); % (FC5gama/FC6gama)
 EFCg2 =  wentropy(x(20,:),tipo,p)./wentropy(x(55,:),tipo,p);
 EFCa = wentropy(x(17,:)./x(52,:),tipo,p);
 
 EFC = [EFCb1;EFCb2;EFCg;EFCa];
% R4 = eb1F3./eb1F4;
% R5 = egAF3./egAF4;
% R6 = eb1AF3./eb1AF4;
% R7 = egO1./egO2;
% R8 = eb1O1./eb1O2;
% R9 = egP7./egP8;
% R10 = eb1P7./eb1P8;

EAF3 = wentropy(x(1,:)./x(3,:),tipo,p); 
EAF4 = wentropy(x(66,:)./x(68,:),tipo,p);
EF3 = wentropy(x(11,:)./x(13,:),tipo,p);
EF4 = wentropy(x(56,:)./x(58,:),tipo,p);

%%
a1 = (WalfaF7 + WalfaF8)./(Wb1F7 + Wb1F8);
a2 = -(log(WalfaF7) + log(WalfaF8));
a3 = log2((Wb1F7 + Wb1F8)./(WalfaF7 + WalfaF8));
a4 = (Wb1F7 + Wb1F8)./(WalfaF7 + WalfaF8);

 
%y = [WgT8;ETg;EPg;EFg;EOg;EAFg;EFFg;EFCg];
%y= [WF3;WF4;WFC5;WT8;WT7;WP8;WP7;WAF3;WAF4;WFC6;WFC5;WO1;WO2;WFC5];
%y = [WgT8;ETg2;EPg2;EFg2;EOg2;EAFg2;EFFg2;EFCg2];
%y = [WF3;WF4;WT7;WT8;WO2;WO1;WP7;WP8];
%y = [WAF3;WAF4;WF3;WF4;WF7;WF8];
%y = [F3;F4;FC5;F8;P7;P8];
y = [WgT8;WgT7;WgF3;WgF4;WgAF3;WgAF4]'; %se alcanza un88.8 con ventana de 4 y 50 seg%
%y = [WgT8;WgT7;WgF3;WgF4;WgAF3;WgAF4;Wb2T8;Wb2T7;Wb2F3;Wb2F4;Wb2AF3;Wb2AF4;WgF7;WgF8]';

% %% Fritz
% %alfa/(alfa+beta)
%y = [FiF3; FiF4; FiAF3; FiAF4]';
%y= [WF3]';
 %y = ac;
