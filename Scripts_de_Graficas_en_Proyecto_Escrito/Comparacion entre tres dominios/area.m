function [total_1,total_2,total_3,total_4,total_5,total_6,total_7,total_8] = area(Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8)
      total_1=trapz(Amean1);
      total_2=trapz(Amean2);
      total_3=trapz(Amean3);
      total_4=trapz(Amean4);
      total_5=trapz(Amean5);
      total_6=trapz(Amean6);
      total_7=trapz(Amean7);
      total_8=trapz(Amean8);
end

