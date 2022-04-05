function [FI,WI,WO,OP,PI,abcd] = determinacion_gesto(LONGITUD)
        imagen2=imread('FIST.jpg');  % imagen del gesto FIST a mostrar en pantalla
        imagen3=imread('OPEN.jpg');  % imagen del gesto OPEN a mostrar en pantalla
        imagen4=imread('WAVE_IN.jpg'); % imagen del gesto WAVE IN a mostrar en pantalla
        imagen5=imread('WAVE_OUT.jpg'); % imagen del gesto WAVE OUT a mostrar en pantalla
        imagen6=imread('PINCH.jpg'); % imagen del gesto PINCH a mostrar en pantalla
%DECICIÓN DE GESTO
        if LONGITUD==3 % condicional para mostrar en pantalla el nombre e imagen del gesto FIST
        fprintf(1,'\n %s \n','FIST');
        imshow(imagen2);
        title('FIST')
        PI=0;
        FI=1;
        WI=0;
        OP=0;
        WO=0;
        abcd=1;
        elseif LONGITUD==1 % condicional para mostrar en pantalla el nombre e imagen del gesto WAVE IN
        fprintf(1,'\n %s \n','WAVE IN');
        imshow(imagen4);
        title('WAVE IN')
        %toc
        PI=0;
        FI=0;
        WI=1;
        OP=0;
        WO=0;
        abcd=1;
        elseif LONGITUD==2 % condicional para mostrar en pantalla el nombre e imagen del gesto WAVE OUT
        fprintf(1,'\n %s \n','WAVE OUT'); 
        imshow(imagen5);
        title('WAVE OUT')               
        PI=0;
        FI=0;
        WI=0;
        OP=0;
        WO=1;
        abcd=1;                
        elseif LONGITUD==4 % condicional para mostrar en pantalla el nombre e imagen del gesto OPEN
        fprintf(1,'\n %s \n','OPEN');
        imshow(imagen3);
        title('OPEN')
        PI=0;
        FI=0;
        WI=0;
        OP=1;
        WO=0;
        abcd=1;
        elseif LONGITUD==5 % condicional para mostrar en pantalla el nombre e imagen del gesto PINCH
        fprintf(1,'\n %s \n','PINCH');
        imshow(imagen6);
        title('PINCH')
        PI=1;
        FI=0;
        WI=0;
        OP=0;
        WO=0;
        abcd=1;      
        end
end

