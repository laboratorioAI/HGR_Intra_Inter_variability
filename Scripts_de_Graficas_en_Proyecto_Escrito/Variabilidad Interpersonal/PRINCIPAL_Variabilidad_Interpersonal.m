clc
clear
close all
a1='SENALES_EMG_USER5J_FIST.mat';
a2='SENALES_EMG_USER5J_WAVE_IN.mat';
a3='SENALES_EMG_USER5J_WAVE_OUT.mat';
a4='SENALES_EMG_USER5J_OPEN.mat';
a5='SENALES_EMG_USER5J_PINCH.mat';
load(a1)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
load(a2)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a3)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a4)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a5)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
TOTALES=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
G1=TOTALES;
[A B C D]=pca(G1,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:125,1)));
PI2=round(mean(B(101:125,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(1)
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
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 5')
grid on
grid minor
axis([-130 130 -100 100])
%--------------------------------------------------------------------------
a1='SENALES_EMG_USER3E_FIST.mat';
a2='SENALES_EMG_USER3E_WAVE_IN.mat';
a3='SENALES_EMG_USER3E_WAVE_OUT.mat';
a4='SENALES_EMG_USER3E_OPEN.mat';
a5='SENALES_EMG_USER3E_PINCH.mat';
load(a1)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
load(a2)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a3)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a4)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a5)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
TOTALES=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
G1=TOTALES;
[A B C D]=pca(G1,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:125,1)));
PI2=round(mean(B(101:125,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(2)
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
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 3')
grid on
grid minor
axis([-130 130 -100 100])
%--------------------------------------------------------------------------
a1='SENALES_EMG_USER7D_FIST.mat';
a2='SENALES_EMG_USER7D_WAVE_IN.mat';
a3='SENALES_EMG_USER7D_WAVE_OUT.mat';
a4='SENALES_EMG_USER7D_OPEN.mat';
a5='SENALES_EMG_USER7D_PINCH.mat';
load(a1)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
load(a2)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a3)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a4)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a5)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
TOTALES=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
G1=TOTALES;
[A B C D]=pca(G1,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:125,1)));
PI2=round(mean(B(101:125,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(3)
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
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 7')
grid on
grid minor
axis([-130 130 -100 100])
%--------------------------------------------------------------------------
a1='SENALES_EMG_USER4A_FIST.mat';
a2='SENALES_EMG_USER4A_WAVE_IN.mat';
a3='SENALES_EMG_USER4A_WAVE_OUT.mat';
a4='SENALES_EMG_USER4A_OPEN.mat';
a5='SENALES_EMG_USER4A_PINCH.mat';
load(a1)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
load(a2)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a3)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a4)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a5)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
TOTALES=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
G1=TOTALES;
[A B C D]=pca(G1,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:125,1)));
PI2=round(mean(B(101:125,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(4)
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
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 4')
grid on
grid minor
axis([-130 130 -100 100])
%--------------------------------------------------------------------------
a1='SENALES_EMG_USER2I_FIST.mat';
a2='SENALES_EMG_USER2I_WAVE_IN.mat';
a3='SENALES_EMG_USER2I_WAVE_OUT.mat';
a4='SENALES_EMG_USER2I_OPEN.mat';
a5='SENALES_EMG_USER2I_PINCH.mat';
load(a1)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
load(a2)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a3)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a4)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a5)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
TOTALES=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
G1=TOTALES;
[A B C D]=pca(G1,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:125,1)));
PI2=round(mean(B(101:125,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(5)
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
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 2')
grid on
grid minor
axis([-130 130 -100 100])
%--------------------------------------------------------------------------
a1='SENALES_EMG_USER9T_FIST.mat';
a2='SENALES_EMG_USER9T_WAVE_IN.mat';
a3='SENALES_EMG_USER9T_WAVE_OUT.mat';
a4='SENALES_EMG_USER9T_OPEN.mat';
a5='SENALES_EMG_USER9T_PINCH.mat';
load(a1)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES1(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
load(a2)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES2(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a3)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES3(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a4)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES4(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
load(a5)
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
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8);
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);
            TOTALES5(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];
   j=j+1;
   end
TOTALES=[TOTALES1;TOTALES2;TOTALES3;TOTALES4;TOTALES5];
G1=TOTALES;
[A B C D]=pca(G1,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:125,1)));
PI2=round(mean(B(101:125,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(6)
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
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 9')
grid on
grid minor
axis([-130 130 -100 100])
%--------------------------------------------------------------------------
load('SENALES_EMG_USER8L_ALL.mat')
GES=TOTALES;
[A B C D]=pca(GES,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:124,1)));
PI2=round(mean(B(101:124,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(7)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:124,1),B(101:124,2),'d')
plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 8')
grid on
grid minor
axis([-130 130 -100 130])
%--------------------------------------------------------------------------
load('SENALES_EMG_USER1J_ALL.mat')
GES=TOTALES;
[A B C D]=pca(GES,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:124,1)));
PI2=round(mean(B(101:124,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(8)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:124,1),B(101:124,2),'d')
plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 1')
grid on
grid minor
axis([-130 130 -100 130])
%--------------------------------------------------------------------------
load('SENALES_EMG_USER6C_ALL.mat')
GES=TOTALES;
[A B C D]=pca(GES,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:124,1)));
PI2=round(mean(B(101:124,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(9)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:124,1),B(101:124,2),'d')
plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 6')
grid on
grid minor
axis([-130 130 -100 130])
%--------------------------------------------------------------------------
load('SENALES_EMG_USER10AN_ALL.mat')
GES=TOTALES;
[A B C D]=pca(GES,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:124,1)));
PI2=round(mean(B(101:124,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(10)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:124,1),B(101:124,2),'d')
plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 10')
grid on
grid minor
axis([-130 130 -100 130])
%--------------------------------------------------------------------------
load('SENALES_EMG_USER11DAN_ALL.mat')
GES=TOTALES;
[A B C D]=pca(GES,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:123,1)));
PI2=round(mean(B(101:123,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(11)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:123,1),B(101:123,2),'d')
plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 12')
grid on
grid minor
axis([-130 130 -100 130])
%--------------------------------------------------------------------------
load('SENALES_EMG_USER12LIZ_ALL.mat')
GES=TOTALES;
[A B C D]=pca(GES,'NumComponents',2);
F1=round(mean(B(1:25,1)));
F2=round(mean(B(1:25,2)));
WI1=round(mean(B(26:50,1)));
WI2=round(mean(B(26:50,2)));
WO1=round(mean(B(51:75,1)));
WO2=round(mean(B(51:75,2)));
OP1=round(mean(B(76:100,1)));
OP2=round(mean(B(76:100,2)));
PI1=round(mean(B(101:124,1)));
PI2=round(mean(B(101:124,2)));
FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2));
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2));
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2));
WIOP=int2str(sqrt((WI1-OP1)^2+(WI1-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP1-PI2)^2));
figure(12)
plot(B(1:25,1),B(1:25,2),'*r')
hold on
plot(B(26:50,1),B(26:50,2),'vm')
plot(B(51:75,1),B(51:75,2),'ob')
plot(B(76:100,1),B(76:100,2),'s')
plot(B(101:124,1),B(101:124,2),'d')
plot(F1,F2,'ok','LineWidth',3)
plot(WI1,WI2,'ok','LineWidth',3)
plot(WO1,WO2,'ok','LineWidth',3)
plot(OP1,OP2,'ok','LineWidth',3)
plot(PI1,PI2,'ok','LineWidth',3)
text(F1,F2+10,'FIST')
text(WI1,WI2+10,'WAVE IN')
text(WO1-25,WO2+10,'WAVE OUT')
text(OP1,OP2+10,'OPEN')
text(PI1-10,PI2+10,'PINCH')
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
title('User 11')
grid on
grid minor
axis([-130 130 -100 130])