function [Amean1,Amean2,Amean3,Amean4,Amean5,Amean6,Amean7,Amean8] = suavizado_curvas(ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8)
      window = 20;
      Amean1 = 1.2*movmean(ba1,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 1
      Amean2 = 1.2*movmean(ba2,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 2
      Amean3 = 1.2*movmean(ba3,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 3
      Amean4 = 1.2*movmean(ba4,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 4
      Amean5 = 1.2*movmean(ba5,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 5
      Amean6 = 1.2*movmean(ba6,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 6
      Amean7 = 1.2*movmean(ba7,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 7
      Amean8 = 1.2*movmean(ba8,window);% instrucción para aplicar un filtro de media móvil a la envolvente de las señal EMG del canal 8
end

