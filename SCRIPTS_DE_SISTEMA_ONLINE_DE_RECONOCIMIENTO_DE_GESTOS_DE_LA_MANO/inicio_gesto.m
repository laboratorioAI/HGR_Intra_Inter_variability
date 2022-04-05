function [ges1,ges2,ges3,ges4,ges5,ges6,ges7,ges8] = inicio_gesto(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i)       
% EXTRACCIÓN DE SEÑAL ÚTIL CON ENERGÍA DE SEÑAL
            t_vent=10; % tamaño de ventana (muestras) de análisis
            toler=1.5; % tolerancia que identifica un 50% por encima de la energía primedio calculada
%-------------------------------------------------------------------------
% CANAL 1
            energia_promedio1=mean((abs(canal_1{i})).^2); % energía de la señal EMG del canal 1
            g_p1=[]; %Acumulador
            H=1;
            while H<=length(canal_1{i})-t_vent
                v=canal_1{i}(H:H+t_vent);  % ventana analizada  
                energia_vent1=mean((abs(v)).^2); % energía de la ventana analizada del canal 1   
                if (energia_vent1>toler*energia_promedio1) 
                    g_p1=[g_p1;v]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H=H+10; % contador
            end
%--------------------------------------------------------------------------
% CANAL 2
            energia_promedio_2=mean((abs(canal_2{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p2=[]; %Acumulador
            H2=1;
            while H2<=length(canal_2{i})-t_vent
                ve=canal_2{i}(H2:H2+t_vent); % ventana analizada      
                energia_vent_2=mean((abs(ve)).^2);% energía de la ventana analizada del canal 1    
                if (energia_vent_2>toler*energia_promedio_2)
                    g_p2=[g_p2;ve]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H2=H2+10;  % contador
            end
%--------------------------------------------------------------------------
% CANAL 3
            energia_promedio_3=mean((abs(canal_3{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p3=[]; %Acumulador
            H3=1;
            while H3<=length(canal_3{i})-t_vent
                ven=canal_3{i}(H3:H3+t_vent); % ventana analizada    
                energia_vent_3=mean((abs(ven)).^2);% energía de la ventana analizada del canal 1    
                if (energia_vent_3>2*toler*energia_promedio_3)
                    g_p3=[g_p3;ven]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H3=H3+10;  % contador
            end
%--------------------------------------------------------------------------
% CANAL 4
            energia_promedio_4=mean((abs(canal_4{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p4=[]; %Acumulador
            H4=1;
            while H4<=length(canal_4{i})-t_vent
                vent=canal_4{i}(H4:H4+t_vent); % ventana analizada      
                energia_vent_4=mean((abs(vent)).^2);% energía de la ventana analizada del canal 1    
                if (energia_vent_4>1.5*toler*energia_promedio_4)
                    g_p4=[g_p4;vent]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H4=H4+10;  % contador
            end
%--------------------------------------------------------------------------
% CANAL 5
            energia_promedio_5=mean((abs(canal_5{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p5=[]; %Acumulador
            H5=1;
            while H5<=length(canal_5{i})-t_vent
                venta=canal_5{i}(H5:H5+t_vent); % ventana analizada      
                energia_vent_5=mean((abs(venta)).^2);% energía de la ventana analizada del canal 1    
                if (energia_vent_5>toler*energia_promedio_5)
                    g_p5=[g_p5;venta]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H5=H5+10;  % contador
            end
%--------------------------------------------------------------------------
% CANAL 6
            energia_promedio_6=mean((abs(canal_6{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p6=[]; %Acumulador
            H6=1;
            while H6<=length(canal_6{i})-t_vent
                ventan=canal_6{i}(H6:H6+t_vent); % ventana analizada      
                energia_vent_6=mean((abs(ventan)).^2);% energía de la ventana analizada del canal 1    
                if (energia_vent_6>toler*energia_promedio_6) 
                    g_p6=[g_p6;ventan]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H6=H6+10;  % contador
            end    
%--------------------------------------------------------------------------
% CANAL 7
            energia_promedio_7=mean((abs(canal_7{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p7=[]; %Acumulador
            H7=1;
            while H7<=length(canal_7{i})-t_vent% ventana analizada
                ventana=canal_7{i}(H7:H7+t_vent);% energía de la ventana analizada del canal 1      
                energia_vent_7=mean((abs(ventana)).^2);    
                if (energia_vent_7>toler*energia_promedio_7)
                    g_p7=[g_p7;ventana]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H7=H7+10;  % contador
            end   
%--------------------------------------------------------------------------
% CANAL 8
            energia_promedio_8=mean((abs(canal_8{i})).^2); % energía promedio de la señal EMG del canal 1
            g_p8=[]; %Acumulador
            H8=1;
            while H8<=length(canal_8{i})-t_vent% ventana analizada
                ventanaa=canal_8{i}(H8:H8+t_vent);% energía de la ventana analizada del canal 1     
                energia_vent_8=mean((abs(ventanaa)).^2);    
                if (energia_vent_8>toler*energia_promedio_8)
                    g_p8=[g_p8;ventanaa]; % almacenamiento de la ventana que contiene la señal EMG sin reposo
                end
            H8=H8+10;  % contador
            end
%--------------------------------------------------------------------------
% IGUALACIÓN DE MUESTRAS PARA COMPARACÍON
            % completar con ceros las señales extraídas para mantener a
            % todas en 160 muestras en caso de falte muestras
            va=160;
            ge1=[g_p1;zeros(va-length(g_p1),1)]; 
            ge2=[g_p2;zeros(va-length(g_p2),1)];
            ge3=[g_p3;zeros(va-length(g_p3),1)];
            ge4=[g_p4;zeros(va-length(g_p4),1)];
            ge5=[g_p5;zeros(va-length(g_p5),1)];
            ge6=[g_p6;zeros(va-length(g_p6),1)];
            ge7=[g_p7;zeros(va-length(g_p7),1)];
            ge8=[g_p8;zeros(va-length(g_p8),1)];
            % recorte de las señales EMG para igualarlas a 160 muestras
            ges1=abs(ge1(1:va));
            ges2=abs(ge2(1:va));
            ges3=abs(ge3(1:va));
            ges4=abs(ge4(1:va)); 
            ges5=abs(ge5(1:va));
            ges6=abs(ge6(1:va));
            ges7=abs(ge7(1:va));
            ges8=abs(ge8(1:va));
end

