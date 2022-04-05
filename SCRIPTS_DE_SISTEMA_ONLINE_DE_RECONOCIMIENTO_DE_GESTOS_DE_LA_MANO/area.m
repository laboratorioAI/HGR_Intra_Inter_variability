function [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8)
      total_1=trapz(Amean1);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 1
      total_2=trapz(Amean2);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 2
      total_3=trapz(Amean3);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 3
      total_4=trapz(Amean4);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 4
      total_5=trapz(Amean5);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 5
      total_6=trapz(Amean6);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 6
      total_7=trapz(Amean7);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 7
      total_8=trapz(Amean8);% instrucción de MALTAB para calcular el area bajo la curva utilizando el método del trapecio para el canal 8
end

