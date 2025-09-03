clc;
close all;
 
g=0.5;
v=3; 
n1=100; 
n2=90;
 
 ar=zeros(1,12);
 par=zeros(1,12);
 i=1;
 j=1;
 lll=zeros(2,100);
 z=1;
    for r=0.8:0.2:5
        p=1-exp(-r^(-v)*(g*gamma(1+1/v))^v);
        PA=((1-p)^n1)+(n1)*((1-p)^n1)*(p)*((1-p)^(n2-1));
        ar(1,i)=r;
        par(1,j)=PA;
        i=i+1;
        j=j+1;
        disp(ar);
        disp(par);
        lll(1,z)=r;
        lll(2,z)=PA;
        z=z+1;      
    end
    xlswrite ('oc',lll);


