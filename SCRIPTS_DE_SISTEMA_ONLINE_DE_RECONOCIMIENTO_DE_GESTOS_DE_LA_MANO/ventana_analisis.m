function [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=ventana(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i)
    %VENTANA DE 400 MUESTRAS DE LA ITERACIÓN 4 QUE CONTIENE LAS SEÑALES EMG
    %PARA RECORTAR Y EXTRAER UNICAMENTE LA SEÑAL EMG SIN LA PARTE DE REPOSO 
    valor=400;
    vent=160;
    gp1=canal_1{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 1
    gp2=canal_2{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 2
    gp3=canal_3{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 3
    gp4=canal_4{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 4
    gp5=canal_5{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 5
    gp6=canal_6{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 6
    gp7=canal_7{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 7
    gp8=canal_8{i}(valor-vent:valor); % extracción de una ventana de 160 muestras que encierra la señal EMG del canal 8
end

