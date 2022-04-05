function [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8)
      window = 15;

%       A11 = 1.15*sgolayfilt(ba1,5,37);
      
      Amean1 = 1.2*movmean(ba1,window);
      Amean2 = 1.2*movmean(ba2,window);
      Amean3 = 1.2*movmean(ba3,window);
      Amean4 = 1.2*movmean(ba4,window);
      Amean5 = 1.2*movmean(ba5,window);
      Amean6 = 1.2*movmean(ba6,window);
      Amean7 = 1.2*movmean(ba7,window);
      Amean8 = 1.2*movmean(ba8,window);
end

