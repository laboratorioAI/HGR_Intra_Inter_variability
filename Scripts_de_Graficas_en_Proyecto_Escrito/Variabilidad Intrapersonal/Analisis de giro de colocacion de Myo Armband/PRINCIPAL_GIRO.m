clc
clear
close all
load('SENALES_EMG_USER_GIRO_180°.mat')
j=1;
   for i=1:1:125
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
    % IGUALACION DE MUESTRAS y RECTIFICACION
                [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
            carga100(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
   j=j+1;
   end
   
load('SENALES_EMG_USER_GIRO_0°.mat')
j=1;
   for i=1:1:125
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
    % IGUALACION DE MUESTRAS y RECTIFICACION
            [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8]=igualacion_muestras(gp1,gp2,gp3,gp4,gp5,gp6,gp7,gp8);
    % RECTIFICACION
            [gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8]=rectificacion(ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8);
    % ENVOLVENTE
            [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111]=envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8);% con rectificacion
    % SUAVIZADO DE CURVAS       
            [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8); % con rectificacion
    % AREA BAJO LA CURVA
            [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8);% con rectificacion y suavizado de curvas
            carga50(j,:)=[total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8];   
    j=j+1;
   end
   
   
G1=carga50;

G2=carga100;
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

FIWI=int2str(sqrt((F1-WI1)^2+(F2-WI2)^2))
FIWO=int2str(sqrt((F1-WO1)^2+(F2-WO2)^2))
FIOP=int2str(sqrt((F1-OP1)^2+(F2-OP2)^2))
FIPI=int2str(sqrt((F1-PI1)^2+(F2-PI2)^2))
WIWO=int2str(sqrt((WI1-WO1)^2+(WI2-WO2)^2))
WIOP=int2str(sqrt((WI1-OP1)^2+(WI2-OP2)^2))
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2))
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2))
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2))
OPPI=int2str(sqrt((OP1-PI1)^2+(OP2-PI2)^2))

figure(1)
subplot(1,2,1)
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

text(-45,52,FIWO)
text(55,30,FIWI)
text(-5,30,FIOP)
text(-65,-30,WOPI)
text(-45,5,WOOP)
text(25,-45,WIPI)
text(35,-10,WIOP)
text(-20,-25,OPPI)


title('Giro = 0°')

% legend('FIST','WAVE IN','WAVE OUT','OPEN','PINCH')
grid on
grid minor
axis([-130 130 -110 100])

[A B C D]=pca(G2,'NumComponents',2);

F1=round(mean(B([1:17 19:25],1)));
F2=round(mean(B([1:17 19:25],2)));

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
WIOP=int2str(sqrt((WI1-OP1)^2+(WI2-OP2)^2));
WIPI=int2str(sqrt((WI1-PI1)^2+(WI2-PI2)^2));
WOOP=int2str(sqrt((WO1-OP1)^2+(WO2-OP2)^2));
WOPI=int2str(sqrt((WO1-PI1)^2+(WO2-PI2)^2));
OPPI=int2str(sqrt((OP1-PI1)^2+(OP2-PI2)^2));

subplot(1,2,2)
plot(B([1:17 19:25],1),B([1:17 19:25],2),'*r')
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

text(40,40,FIWO)
text(-85,30,FIWI)
text(-5,30,FIOP)
text(50,-25,WOPI)
text(30,0,WOOP)
text(-60,-35,WIPI)
text(-50,-5,WIOP)
text(3,-25,'48')

title('Giro = 180°')

grid on
grid minor
axis([-130 130 -110 100])
legend('FIST','WAVE IN','WAVE OUT','OPEN','PINCH')
% sgtitle('Placement Twist Myo-armband','Color','blue')
sgtitle('Giro de colocación Myo-armband','Color','blue')