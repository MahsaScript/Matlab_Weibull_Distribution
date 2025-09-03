clc;
close all;
 
g=0.8;% the coeficient of test termination;
v=2; %shape paramet of weibull distribution;
n=20; %Sample size;
m=2; % number of resampling;
c=3; %rejection criteria;
 
 ar=zeros(1,12);
 par=zeros(1,12);
 i=1;
 j=1;
 
 lll=zeros(2,100);
 z=1;
    for r=0.8:0.2:5
        p=1-exp(-r^(-v)*(g*gamma(1+1/v))^v);
        pa=binocdf(c-1,n,p);
        pi=1-((1-pa)^m);
        ar(1,i)=r;
        par(1,j)=pi;
        i=i+1;
        j=j+1;
        disp(ar);
        disp(par);
        lll(1,z)=r;
        lll(2,z)=pi;
        z=z+1;      
    end
    xlswrite ('oc',lll);
