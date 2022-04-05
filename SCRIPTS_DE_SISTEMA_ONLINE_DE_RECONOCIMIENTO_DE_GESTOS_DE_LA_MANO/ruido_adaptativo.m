function [umbral_1,umbral_2,umbral_3,umbral_4,umbral_5,umbral_6,umbral_7,umbral_8]=ventana_1(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i)
    % VENTANA DONDE SE ANALIZA EL MÁXIMO NIVEL DE RUIDO EN CADA CANAL PARA
    % OBTENER UN UMBRAL PARA DETECCIÓN DE QUE SE REALIZO UN GESTO
    vent=200;
    gp1=canal_1{i}(1:length(canal_1{i})-vent); % se obtiene los valores unicamente de ruido del canal 1
    gp2=canal_2{i}(1:length(canal_2{i})-vent); % se obtiene los valores unicamente de ruido del canal 2
    gp3=canal_3{i}(1:length(canal_3{i})-vent); % se obtiene los valores unicamente de ruido del canal 3
    gp4=canal_4{i}(1:length(canal_4{i})-vent); % se obtiene los valores unicamente de ruido del canal 4
    gp5=canal_5{i}(1:length(canal_5{i})-vent); % se obtiene los valores unicamente de ruido del canal 5
    gp6=canal_6{i}(1:length(canal_6{i})-vent); % se obtiene los valores unicamente de ruido del canal 6
    gp7=canal_7{i}(1:length(canal_7{i})-vent); % se obtiene los valores unicamente de ruido del canal 7
    gp8=canal_8{i}(1:length(canal_8{i})-vent); % se obtiene los valores unicamente de ruido del canal 8
    % HALLAR EL MÁXIMO VALOR DE RUIDO EN CADA CANAL    
    um_1=max(gp1);
    um_2=max(gp2);
    um_3=max(gp3);
    um_4=max(gp4);
    um_5=max(gp5);
    um_6=max(gp6);
    um_7=max(gp7);
    um_8=max(gp8); 
    % OBTENER UN UMBRAL DE CADA CANAL SEGÚN SU NIVEL DE RUIDO QUE SEA
    % SUPERIOR EN UN  100 % AL MÁXIMO NIVEL DE RUIDO
    tolerancia=2;
    umbral_1=um_1*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 1
    umbral_2=um_2*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 2
    umbral_3=um_3*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 3
    umbral_4=um_4*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 4
    umbral_5=um_5*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 5
    umbral_6=um_6*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 6
    umbral_7=um_7*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 7
    umbral_8=um_8*tolerancia;% se cálcula un umbral el doble del máximo nivel de ruido del canal 8
end

