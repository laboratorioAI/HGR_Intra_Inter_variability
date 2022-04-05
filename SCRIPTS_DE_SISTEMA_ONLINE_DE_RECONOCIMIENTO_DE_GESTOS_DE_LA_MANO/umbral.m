function  [iteracion] = umbral(canal_1,canal_2,canal_3,canal_4,canal_5,canal_6,canal_7,canal_8,i,iteracion,Q,...
                               umbral_1,umbral_2,umbral_3,umbral_4,umbral_5,umbral_6,umbral_7,umbral_8)
    % IGUALACIÓN DE MUESTRAS, AÑADIENDO CEROS PARA MANTENER VECTORES DE 400
    % EN EL CASO QUE FALTA
    valor=400;
    tom1=[canal_1{i};zeros(valor-length(canal_1{i}),1)];  
    tom2=[canal_2{i};zeros(valor-length(canal_2{i}),1)]; 
    tom3=[canal_3{i};zeros(valor-length(canal_3{i}),1)]; 
    tom4=[canal_4{i};zeros(valor-length(canal_4{i}),1)]; 
    tom5=[canal_5{i};zeros(valor-length(canal_5{i}),1)]; 
    tom6=[canal_6{i};zeros(valor-length(canal_6{i}),1)]; 
    tom7=[canal_7{i};zeros(valor-length(canal_7{i}),1)]; 
    tom8=[canal_8{i};zeros(valor-length(canal_8{i}),1)]; 
    % ENCUENTRA LOS VALORES MAYORES A 0.3 DE LA VENTANA DE ANÁLISIS DE CADA
    % CANAL
    picos1=[0.01;tom1(find(tom1>umbral_1))];
    picos2=[0.01;tom2(find(tom2>umbral_2))];
    picos3=[0.01;tom3(find(tom3>umbral_3))];
    picos4=[0.01;tom4(find(tom4>umbral_4))];
    picos5=[0.01;tom5(find(tom5>umbral_5))];
    picos6=[0.01;tom6(find(tom6>umbral_6))];
    picos7=[0.01;tom7(find(tom7>umbral_7))];
    picos8=[0.01;tom8(find(tom8>umbral_8))]; 
    % CÁLCULO DEL PROMEDIO DE TODOS LOS VALORES MAYORES A 0.3
    E1=mean(picos1);
    E2=mean(picos2);
    E3=mean(picos3);
    E4=mean(picos4);
    E5=mean(picos5);
    E6=mean(picos6);
    E7=mean(picos7);
    E8=mean(picos8);
    % VERIFICACIÓN DEL VALOR PROMEDIO ANTES CALCULADO Y UN UMBRAL OBTENIDO
    % AL INICIO DE LA CONFIGURACIÒN RÁPIDA PARA IDENTIFICAR QUE SE TRATA DE
    % UN GESTO REALIZA Y NO DE REPOSO
    if ( (E1 >= umbral_1) || (E2 >= umbral_2) || (E3 >= umbral_3) || (E4 >= umbral_4) || (E5 >= umbral_5) || (E6 >= umbral_6) || (E7 >= umbral_7) || (E8 >= umbral_8) )
          iteracion=iteracion+1;      
    else  
        if Q==1 % condicional para solicitar realziar el gesto WAVE IN 
                % pero unicamente en la configuración rápida al inicio de sesión 
        imagen4=imread('WAVE_IN.jpg');
        imshow(imagen4);
        title('REALICE EL GESTO  WAVE IN')
%         pause(0.3)
        elseif Q==2% condicional para solicitar realziar el gesto WAVE OUT 
                % pero unicamente en la configuración rápida al inicio de sesión 
        imagen5=imread('WAVE_OUT.jpg');
        imshow(imagen5);
%         pause(0.3)
        title('REALICE EL GESTO  WAVE OUT')
        elseif Q==3% condicional para solicitar realziar el gesto FIST 
                % pero unicamente en la configuración rápida al inicio de sesión 
        imagen5=imread('FIST.jpg');
        imshow(imagen5);
%         pause(0.3)
        title('REALICE EL GESTO  FIST')
        elseif Q==4% condicional para solicitar realziar el gesto OPEN 
                % pero unicamente en la configuración rápida al inicio de sesión 
        imagen6=imread('OPEN.jpg');
        imshow(imagen6);
%         pause(0.3)
        title('REALICE EL GESTO  OPEN')
        elseif Q==5% condicional para solicitar realziar el gesto PINCH
                % pero unicamente en la configuración rápida al inicio de sesión 
        imagen7=imread('PINCH.jpg');
        imshow(imagen7);
%         pause(0.3)
        title('REALICE EL GESTO  PINCH')
        elseif Q==0
%        fprintf(1,'\n %s \n','NO GESTO');
         imagen1=imread('NO_GESTURE.jpg');
         imshow(imagen1);
%          pause(0.5)
         end
    end
end

