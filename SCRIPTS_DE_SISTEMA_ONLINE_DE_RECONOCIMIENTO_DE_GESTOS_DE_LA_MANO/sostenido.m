function [D1,D2,D3,D4,D5,D6,D7,D8,terminar,as] = sostenido(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i,s,abcd,fin,Q,FI,WI,WO,OP,PI)
    % IMAGENES QUE SE MUESTRAN EN PANTALLA
    imagen1=imread('NO_GESTURE.jpg');
    imagen2=imread('FIST.jpg');
    imagen3=imread('OPEN.jpg');
    imagen4=imread('WAVE_IN.jpg');
    imagen5=imread('WAVE_OUT.jpg');
    imagen6=imread('PINCH.jpg');
    % IGUALIZACIÓN DE MUESTRAS DE LAS SEÑALES EMG, COMPLETANDO CON CEROS
    val=400;
    tom1=[canal_1{i};zeros(val-length(canal_1{i}),1)];  
    tom2=[canal_2{i};zeros(val-length(canal_2{i}),1)]; 
    tom3=[canal_3{i};zeros(val-length(canal_3{i}),1)]; 
    tom4=[canal_4{i};zeros(val-length(canal_4{i}),1)]; 
    tom5=[canal_5{i};zeros(val-length(canal_5{i}),1)]; 
    tom6=[canal_6{i};zeros(val-length(canal_6{i}),1)]; 
    tom7=[canal_7{i};zeros(val-length(canal_7{i}),1)]; 
    tom8=[canal_8{i};zeros(val-length(canal_8{i}),1)]; 
    % OBTENER LAS 25 ÚLTIMAS MUESTRAS DE LA VENTANA DE ANÁLISIS
    % PARA VERIFICAR SI SE SIGUE MANTENIEDO EL GESTO
    valor=25;
    B1=tom1(val-valor:val);
    B2=tom2(val-valor:val);
    B3=tom3(val-valor:val);
    B4=tom4(val-valor:val);
    B5=tom5(val-valor:val);
    B6=tom6(val-valor:val);
    B7=tom7(val-valor:val);
    B8=tom8(val-valor:val);
    % SE OBTIENE LOS VALORES DE LAS ÚLTIMAS 25 MUESTRAS QUE SUPERAN EL VALOR DE 0.3   
    num=0.3;
    C1=[0.1;B1(find(B1>num))];
    C2=[0.1;B2(find(B2>num))];
    C3=[0.1;B3(find(B3>num))];
    C4=[0.1;B4(find(B4>num))];
    C5=[0.1;B5(find(B5>num))];
    C6=[0.1;B6(find(B6>num))];
    C7=[0.1;B7(find(B7>num))];
    C8=[0.1;B8(find(B8>num))];
    % SE CÁLCULA UN PROMEDIO DE TODAS LAS MUESTRAS MAYORES A 0.3
    D1=mean(C1);
    D2=mean(C2);
    D3=mean(C3);
    D4=mean(C4);
    D5=mean(C5);
    D6=mean(C6);
    D7=mean(C7);
    D8=mean(C8); 
        umbr=0.3;
        terminar=0;
        as=0;
    % SE VERIFICA SI EL PROMEDIO DE LAS 25 ÚLTIMAS MUESTRAS DE LA VENTANA
    % DE ANÁLISIS SUPERAN EL VALOR DE 0.3 LO QUE DETERMINA SI EL USUARIO
    % SIGUE MANTENIEDO EL GESTO O SE ENCUENTRA EN REPOSO
    if ((D1>=umbr) || (D2>=umbr) || (D3>=umbr) || (D4>=umbr) || (D5>=umbr) || (D6>=umbr) || (D7>=umbr) || (D8>=umbr))
      if s==1 && PI==1 % se verifica si el gesto PINCH se esta sosteniedo
%                        fprintf(1,'\n %s','PINCH');
      elseif s==1 && FI==1 % se verifica si el gesto FIST se esta sosteniedo
%                        fprintf(1,'\n %s','FIST');
      elseif s==1 && WI==1 % se verifica si el gesto WAVE IN se esta sosteniedo
%                        fprintf(1,'\n %s','WAVE_IN');
      elseif s==1 && WO==1 % se verifica si el gesto WAVE OUT se esta sosteniedo
      %  fprintf(1,'\n %s','WAVE_OUT');
       if fin==15 % condicional que verifica si se esta sosteniendo el gesto WAVE OUT para finalizar el programa 
        terminar=1;
       end
      elseif s==1 && OP==1 % se verifica si el gesto OPEN se esta sosteniedo
%                        fprintf(1,'\n %s','OPEN');
      end
    else  % si la condición inicial no se cumple
        as=1;
        %       fprintf(1,'\n %s \n','NO GESTO');
      if abcd==1 % si el usuario esta en reposo se formatea algunas variables necesarias
          clc
          clear BARRA
          imshow(imagen1); % se muestra en pantalla la representación de reposo
      end   
      % Se pide realizar cada gesto pero solo para la configuración inicial
       if Q==1
%                fprintf(1,'\n %s \n','Realice el gesto WAVE_IN');
       imshow(imagen4);
        title('REALICE EL GESTO  WAVE IN')
%                pause(0.3)
       elseif Q==2
        imshow(imagen5);
        title('REALICE EL GESTO  WAVE OUT')
%                 pause(0.3)
       elseif Q==3
        imshow(imagen2);
        title('REALICE EL GESTO  FIST')
%                 pause(0.3)
       elseif Q==4
        imshow(imagen3);
        title('REALICE EL GESTO  OPEN')
%                 pause(0.3)
       elseif Q==5
        imshow(imagen6);
        title('REALICE EL GESTO  PINCH')
%                 pause(0.3)
        end
    end
end

