%% Analisis Factor de amortiguamiento
tfin = 10 ; % TIEMPO FINAL PARA LA SIMULACION
Tu = 1; % TIEMPO DEL ESCALON
u = 2; % AMPLITUD DEL ESCALON
frec = (2*pi)/(Tu); % FRECUENCIA ANGULAR
kp = 1; % GANANCIA 
amorti= 0; % AMORTIGUAMIENTO
num = kp*(frec^2); % NUMERADOR 
td = 0; % RETARDO
pasos = 0.1; %Numero de pasos
amortifinal = 1; %VALOR FINAL DEL COEFICIENTE DE AMORTIGUAMIENTO
while amorti<=amortifinal 
    den = [1 2*amorti*frec frec^2]; % DENOMINADOR 
    sim('simulacion'); 
    y = Data.signals(1).values;
    x = Data.signals(2).values; 
    hold on; 
    amorti = amorti + pasos; 
    %GRAFICAR 
    plot(tout, y,tout, x ,'linewidth', 1); 
end
