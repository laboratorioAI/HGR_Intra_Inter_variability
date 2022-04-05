function [canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8] = separacion(BARRA,i)
    canal_1{i}=BARRA(:,1); % obtención de la columna 1, que corresponde la señal EMG del canal 1 para un análisis individual
    canal_2{i}=BARRA(:,2); % obtención de la columna 2, que corresponde la señal EMG del canal 2 para un análisis individual
    canal_3{i}=BARRA(:,3); % obtención de la columna 3, que corresponde la señal EMG del canal 3 para un análisis individual
    canal_4{i}=BARRA(:,4); % obtención de la columna 4, que corresponde la señal EMG del canal 4 para un análisis individual
    canal_5{i}=BARRA(:,5); % obtención de la columna 5, que corresponde la señal EMG del canal 5 para un análisis individual
    canal_6{i}=BARRA(:,6); % obtención de la columna 6, que corresponde la señal EMG del canal 6 para un análisis individual
    canal_7{i}=BARRA(:,7); % obtención de la columna 7, que corresponde la señal EMG del canal 7 para un análisis individual
    canal_8{i}=BARRA(:,8); % obtención de la columna 8, que corresponde la señal EMG del canal 8 para un análisis individual
end

