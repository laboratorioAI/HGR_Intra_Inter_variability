clc
clear
close all
%------------------------'Analisis dominio complejidad'-----------------------
load SENALES_EMG_USER_FIST.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % EXTRACCION DE SENAL UTIL (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % DIMENSION FRACTAL       
            [KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8] = Katz_FD(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % EXTRACCION DE DECIMALES
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = decimales(KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8);        
             TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
    j=j+1;
   end
load SENALES_EMG_USER_WAVE_IN.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % DIMENSION FRACTAL       
            [KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8] = Katz_FD(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % EXTRACCION DE DECIMALES
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = decimales(KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8);
             TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
    j=j+1;
   end
load SENALES_EMG_USER_WAVE_OUT.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % DIMENSION FRACTAL       
            [KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8] = Katz_FD(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % EXTRACCION DE DECIMALES
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = decimales(KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8);      
             TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
    j=j+1;
   end
load SENALES_EMG_USER_OPEN.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % DIMENSION FRACTAL       
            [KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8] = Katz_FD(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % EXTRACCION DE DECIMALES
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = decimales(KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8);
             TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
 j=j+1;
   end
load SENALES_EMG_USER_PINCH.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % DIMENSION FRACTAL       
            [KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8] = Katz_FD(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % EXTRACCION DE DECIMALES
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = decimales(KFD1,KFD2,KFD3,KFD4,KFD5,KFD6,KFD7,KFD8);
             TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
 j=j+1;
   end
DOM_COMPLEJIDAD=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
clear TOTALES1 TOTALES2 TOTALES3 TOTALES4 TOTALES5
clear canal_1 canal_2 canal_3 canal_4 canal_5
clear total_1 total_2 total_3 total_4 total_5
%------------------------'Analisis dominio frecuencia'-----------------------
load SENALES_EMG_USER_FIST.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % PERIODOGRAMA
             [Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8] = periodograma(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
             TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8]; 
    j=j+1;
   end
load SENALES_EMG_USER_WAVE_IN.mat
j=1;
 for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % PERIODOGRAMA
             [Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8] = periodograma(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
             TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
    j=j+1;
 end
load SENALES_EMG_USER_WAVE_OUT.mat
j=1;
 for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % PERIODOGRAMA
             [Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8] = periodograma(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
             TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
j=j+1;
 end
load SENALES_EMG_USER_OPEN.mat
j=1;
 for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % PERIODOGRAMA
            [Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8] = periodograma(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
             TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
  j=j+1;
  end
load SENALES_EMG_USER_PINCH.mat
j=1;
 for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % PERIODOGRAMA
             [Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8] = periodograma(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(Pn1,Pn2,Pn3,Pn4,Pn5,Pn6,Pn7,Pn8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
             TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
    j=j+1;
  end
DOM_FRECUENCIA=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
clear TOTALES1 TOTALES2 TOTALES3 TOTALES4 TOTALES5
clear canal_1 canal_2 canal_3 canal_4 canal_5
clear total_1 total_2 total_3 total_4 total_5

%------------------------'Analisis dominio tiempo'-----------------------
load SENALES_EMG_USER_FIST.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); 
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load SENALES_EMG_USER_WAVE_IN.mat
j=1;
   for i=1:1:25
% tic
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load SENALES_EMG_USER_WAVE_OUT.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
     j=j+1;
   end
load SENALES_EMG_USER_OPEN.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
     j=j+1;
   end
load SENALES_EMG_USER_PINCH.mat
j=1;
   for i=1:1:25
       canal_1=EMG{i}(:,1);
       canal_2=EMG{i}(:,2);
       canal_3=EMG{i}(:,3);
       canal_4=EMG{i}(:,4);
       canal_5=EMG{i}(:,5);
       canal_6=EMG{i}(:,6);
       canal_7=EMG{i}(:,7);
       canal_8=EMG{i}(:,8);
    % INICIO DEL GESTO (RECONOCIMIENTO)
            [gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8]=inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i);
    % IGUALACION DE MUESTRAS
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
    j=j+1;
   end
DOM_TIEMPO=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];

%--------------------------------------------------------------------------

G1=DOM_TIEMPO./max(max(DOM_TIEMPO));
% G1=GEST_TIME;

G2=DOM_FRECUENCIA./max(max(DOM_FRECUENCIA));
%G2=GEST_FREQ;

G3=DOM_COMPLEJIDAD./max(max(DOM_COMPLEJIDAD));
%G3=GEST_COMPL;
[A B C D]=pca(G1,'NumComponents',2);

F1=mean(B(1:25,1));
F2=mean(B(1:25,2));

WI1=mean(B(26:50,1));
WI2=mean(B(26:50,2));

WO1=mean(B(51:75,1));
WO2=mean(B(51:75,2));

OP1=mean(B(76:100,1));
OP2=mean(B(76:100,2));

PI1=mean(B(101:125,1));
PI2=mean(B(101:125,2));

SF1=std(B(1:25,1))
SF2=std(B(1:25,2))

SWI1=std(B(26:50,1))
SWI2=std(B(26:50,2))

SWO1=std(B(51:75,1))
SWO2=std(B(51:75,2))

SOP1=std(B(76:100,1))
SOP2=std(B(76:100,2))

SPI1=std(B(101:125,1))
SPI2=std(B(101:125,2))

FIWI=num2str(sqrt((F1-WI1)^2+(F2-WI2)^2),2);
FIWO=num2str(sqrt((F1-WO1)^2+(F2-WO2)^2),2);
FIOP=num2str(sqrt((F1-OP1)^2+(F2-OP2)^2),2);
FIPI=num2str(sqrt((F1-PI1)^2+(F2-PI2)^2),2);
WIWO=num2str(sqrt((WI1-WO1)^2+(WI2-WO2)^2),2);
WIOP=num2str(sqrt((WI1-OP1)^2+(WI2-OP2)^2),2);
WIPI=num2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2),2);
WOOP=num2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2),2);
WOPI=num2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2),2);
OPPI=num2str(sqrt((OP1-PI1)^2+(OP2-PI2)^2),2);

figure(1)
subplot(1,3,1)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:125,1),B(101:125,2),'d')

plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
% text(F1+10,F2,'FIST')
% text(WI1-10,WI2+20,'WAVE IN')
% text(WO1-20,WO2+25,'WAVE OUT')
% text(OP1-10,OP2+20,'OPEN')
% text(PI1-10,PI2+15,'PINCH')

line([F1;WI1],[F2;WI2])
line([F1,WO1],[F2,WO2])
line([F1,OP1],[F2,OP2])
line([WI1,OP1],[WI2,OP2])
line([WI1,PI1],[WI2,PI2])
line([WO1,OP1],[WO2,OP2])
line([WO1,PI1],[WO2,PI2])
line([OP1,PI1],[OP2,PI2])

text(-0.5,0.3,FIWO)
text(0.5,0.3,FIWI)
text(0,0.25,FIOP)
text(-0.5,0.02,WOOP)
text(-0.8,-0.2,WOPI)
text(0.2,-0.3,WIPI)
text(0.2,-0.05,WIOP)
text(-0.20,-0.17,OPPI)

% legend('FIST','WAVE IN','WAVE OUT','OPEN','PINCH')
title('Dominio Temporal')

% legend('FIST','WAVE IN','WAVE OUT','OPEN','PINCH')
grid on
grid minor
axis([-1 1 -0.6 0.8])


clear F1 F2 WI1 WI2 WO1 WO2 OP1 OP2 PI1 PI2 FIWI FIWO FIOP FIPI WIWO WIOP WIPI WOOP WOPI OPPI


[A B C D]=pca(G2,'NumComponents',2);

F1=mean(B(1:25,1));
F2=mean(B(1:25,2));

WI1=mean(B(26:50,1));
WI2=mean(B(26:50,2));

WO1=mean(B(51:75,1));
WO2=mean(B(51:75,2));

OP1=mean(B(76:100,1));
OP2=mean(B(76:100,2));

PI1=mean(B(101:125,1));
PI2=mean(B(101:125,2));


SF1=std(B(1:25,1))
SF2=std(B(1:25,2))

SWI1=std(B(26:50,1))
SWI2=std(B(26:50,2))

SWO1=std(B(51:75,1))
SWO2=std(B(51:75,2))

SOP1=std(B(76:100,1))
SOP2=std(B(76:100,2))

SPI1=std(B(101:125,1))
SPI2=std(B(101:125,2))

FIWI=num2str(sqrt((F1-WI1)^2+(F2-WI2)^2),2)
FIWO=num2str(sqrt((F1-WO1)^2+(F2-WO2)^2),2)
FIOP=num2str(sqrt((F1-OP1)^2+(F2-OP2)^2),2)
FIPI=num2str(sqrt((F1-PI1)^2+(F2-PI2)^2),2)
WIWO=num2str(sqrt((WI1-WO1)^2+(WI2-WO2)^2),2)
WIOP=num2str(sqrt((WI1-OP1)^2+(WI2-OP2)^2),2)
WIPI=num2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2),2)
WOOP=num2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2),2)
WOPI=num2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2),2)
OPPI=num2str(sqrt((OP1-PI1)^2+(OP2-PI2)^2),2)

subplot(1,3,2)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:125,1),B(101:125,2),'d')


plot(F1,F2,'ok','LineWidth',3)

plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
% text(F1-30000,F2+70000,'FIST')
% text(WI1-30000,WI2+80000,'WAVE IN')
% text(WO1,WO2-60000,'WAVE OUT')
% text(OP1-40000,OP2+75000,'OPEN')
% text(PI1-30000,PI2+75000,'PINCH')
line([F1;WI1],[F2;WI2])
line([F1,WO1],[F2,WO2])
line([F1,OP1],[F2,OP2])
line([WI1,OP1],[WI2,OP2])
line([WI1,PI1],[WI2,PI2])
line([WO1,OP1],[WO2,OP2])
line([WO1,PI1],[WO2,PI2])
line([OP1,PI1],[OP2,PI2])

text(-0.8,-0.3,FIWO)
text(0.3,-0.3,FIWI)
text(-0.15,-0.2,FIOP)
text(-0.6,0.3,WOPI)
text(-0.4,0,WOOP)
text(0.4,0.3,WIPI)
text(0.2,0,WIOP)
text(-0.2,0.2,OPPI)

title('Dominio Espectral')
% legend('FIST','WAVE IN','WAVE OUT','OPEN','PINCH')
grid on
grid minor
axis([-1 1 -0.6 0.8])
% axis([-400000 450000 -450000 350000])



[A B]=pca(G3,'NumComponents',2);

F1=mean(B(1:25,1));
F2=mean(B(1:25,2));

WI1=mean(B(26:50,1));
WI2=mean(B(26:50,2));

WO1=mean(B(51:75,1));
WO2=mean(B(51:75,2));

OP1=mean(B(76:100,1));
OP2=mean(B(76:100,2));

PI1=mean(B(101:125,1));
PI2=mean(B(101:125,2));

SF1=std(B(1:25,1))
SF2=std(B(1:25,2))

SWI1=std(B(26:50,1))
SWI2=std(B(26:50,2))

SWO1=std(B(51:75,1))
SWO2=std(B(51:75,2))

SOP1=std(B(76:100,1))
SOP2=std(B(76:100,2))

SPI1=std(B(101:125,1))
SPI2=std(B(101:125,2))

FIWI=num2str(sqrt((F1-WI1)^2+(F2-WI2)^2),2)
FIWO=num2str(sqrt((F1-WO1)^2+(F2-WO2)^2),2)
FIOP=num2str(sqrt((F1-OP1)^2+(F2-OP2)^2),2)
FIPI=num2str(sqrt((F1-PI1)^2+(F2-PI2)^2),2)
WIWO=num2str(sqrt((WI1-WO1)^2+(WI2-WO2)^2),2)
WIOP=num2str(sqrt((WI1-OP1)^2+(WI2-OP2)^2),2)
WIPI=num2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2),2)
WOOP=num2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2),2)
WOPI=num2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2),2)
OPPI=num2str(sqrt((OP1-PI1)^2+(OP2-PI2)^2),2)

subplot(1,3,3)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:125,1),B(101:125,2),'d')


plot(F1,F2,'ok','LineWidth',3)

plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
% text(F1+10,F2,'FIST')
% text(WI1-10,WI2+20,'WAVE IN')
% text(WO1-20,WO2+30,'WAVE OUT')
% text(OP1-10,OP2+25,'OPEN')
% text(PI1-10,PI2+20,'PINCH')
line([F1;WI1],[F2;WI2])
line([F1,WO1],[F2,WO2])
line([F1,OP1],[F2,OP2])
% line([F1,PI1],[F2,PI2])
% line([WI1,WO1],[WI2,WO2])
line([WI1,OP1],[WI2,OP2])
line([WI1,PI1],[WI2,PI2])
line([WO1,OP1],[WO2,OP2])
line([WO1,PI1],[WO2,PI2])
line([OP1,PI1],[OP2,PI2])

text(0.3,0.3,FIWO)
text(-0.85,0.2,FIWI)
text(-0.15,0.25,FIOP)
text(0.4,-0.3,WOPI)
text(0.25,0.04,WOOP)
text(-0.5,-0.33,WIPI)
text(-0.5,-0.075,WIOP)
text(-0.1,-0.17,OPPI)

title('Dominio de la Complejidad')

grid on
grid minor
% axis([-130 155 -90 130])
legend('FIST','WAVE IN','WAVE OUT','OPEN','PINCH')
sgtitle('Comparación entre Variables','Color','blue')