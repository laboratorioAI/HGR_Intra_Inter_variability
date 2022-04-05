function [ba1,ba2,ba3,ba4,ba5,ba6,ba7,ba8,df1,df11,df111,df1111] = envolvente(gest1,gest2,gest3,gest4,gest5,gest6,gest7,gest8)
    df1=envelope(gest1,3,'peak');
    ab1=[0.1;df1(find(df1>0))];
    ba1=[0.1;ab1(find(ab1<1.1))];
    
    df11=envelope(gest1,5,'rms');
    
    df111=envelope(gest1,5,'analytic');
    
    df1111=sgolayfilt(gest1,5,31);
% break;
    df2=envelope(gest2,3,'peak');
    ab2=[0.1;df2(find(df2>0))];
    ba2=[0.1;ab2(find(ab2<1.2))];

    df3=envelope(gest3,3,'peak');
    ab3=[0.1;df3(find(df3>0))];
    ba3=[0.1;ab3(find(ab3<1.2))];

    df4=envelope(gest4,3,'peak');
    ab4=[0.1;df4(find(df4>0))];
    ba4=[0.1;ab4(find(ab4<1.2))];

    df5=envelope(gest5,3,'peak');
    ab5=[0.1;df5(find(df5>0))];
    ba5=[0.1;ab5(find(ab5<1.2))];

    df6=envelope(gest6,3,'peak');
    ab6=[0.1;df6(find(df6>0))];
    ba6=[0.1;ab6(find(ab6<1.2))];

    df7=envelope(gest7,3,'peak');
    ab7=[0.1;df7(find(df7>0))];
    ba7=[0.1;ab7(find(ab7<1.2))];

    df8=envelope(gest8,3,'peak');
    ab8=[0.1;df8(find(df8>0))];
    ba8=[0.1;ab8(find(ab8<1.2))];

end

