function [LONGITUD,DISTANCIA_PI] = centroide(total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8,FI1,FI2,FI3,FI4,FI5,FI6,FI7,FI8,WI1,WI2,WI3,WI4,WI5,WI6,WI7,WI8,WO1,WO2,WO3,WO4,WO5,WO6,WO7,WO8,OP1,OP2,OP3,OP4,OP5,OP6,OP7,OP8,PI1,PI2,PI3,PI4,PI5,PI6,PI7,PI8)
%--------------------------------------------------------------------------
DISTANCIA_FI=sqrt((FI1-total_1)^2+(FI2-total_2)^2+(FI3-total_3)^2+(FI4-total_4)^2+(FI5-total_5)^2+(FI6-total_6)^2+(FI7-total_7)^2+(FI8-total_8)^2);% fórmula de distancia euclidiana para hallar la distancia entre los 8 canales del gesto FIST y un nuevo gesto
DISTANCIA_WI=sqrt((WI1-total_1)^2+(WI2-total_2)^2+(WI3-total_3)^2+(WI4-total_4)^2+(WI5-total_5)^2+(WI6-total_6)^2+(WI7-total_7)^2+(WI8-total_8)^2);% fórmula de distancia euclidiana para hallar la distancia entre los 8 canales del gesto WAVE IN y un nuevo gesto
DISTANCIA_WO=sqrt((WO1-total_1)^2+(WO2-total_2)^2+(WO3-total_3)^2+(WO4-total_4)^2+(WO5-total_5)^2+(WO6-total_6)^2+(WO7-total_7)^2+(WO8-total_8)^2);% fórmula de distancia euclidiana para hallar la distancia entre los 8 canales del gesto WAVE OUT y un nuevo gesto
DISTANCIA_OP=sqrt((OP1-total_1)^2+(OP2-total_2)^2+(OP3-total_3)^2+(OP4-total_4)^2+(OP5-total_5)^2+(OP6-total_6)^2+(OP7-total_7)^2+(OP8-total_8)^2);% fórmula de distancia euclidiana para hallar la distancia entre los 8 canales del gesto OPEN y un nuevo gesto
DISTANCIA_PI=sqrt((PI1-total_1)^2+(PI2-total_2)^2+(PI3-total_3)^2+(PI4-total_4)^2+(PI5-total_5)^2+(PI6-total_6)^2+(PI7-total_7)^2+(PI8-total_8)^2);% fórmula de distancia euclidiana para hallar la distancia entre los 8 canales del gesto PINCH y un nuevo gesto

DISTANCIA=[DISTANCIA_WI,DISTANCIA_WO,DISTANCIA_FI,DISTANCIA_OP,DISTANCIA_PI];% concatenación de las distancias calculadas entre un nuevo gesto y los centroides de cada gesto
[VALOR,LONGITUD]=min(DISTANCIA); % instrucción para hallar el índice de el menor valor que identifica al gesto realizado 
end