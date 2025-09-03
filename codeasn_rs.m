clc;
close all;
ASN=1000;
g=1;% the coeficient of test termination;
v=2; %shape paramet of weibull distribution;
r1=4;
r2=1;
a=0.05;
b=0.1;
 
 
on=0; %optimized value of n;
om=0;  %optimized value of m;
oc=0;
 
for n=1:50
    for c=1:10
        for m=2:2
            
            pr1=1-exp(-r1^(-v)*(g*gamma(1+1/v))^v);
            pr2=1-exp(-r2^(-v)*(g*gamma(1+1/v))^v);
            
            par1=binocdf(c-1,n,pr1);
            par2=binocdf(c-1,n,pr2);
            
 
            if 1-((1-par2)^m) <= b && 1-((1-par1)^m)>= 1-a
               asn =0.5*(n*(1-(1-par1)^m)/par1+n*(1-(1-par2)^m)/par2); 
               if asn<ASN 
                  ASN=asn;
                  on=n; %optimized value of n;
                  om=m;  %optimized value of m;
                  oc=c;  %optimized value of c;
                  
               
               else
                   continue
               
               end
               
               
            end
            
           
        end
    end
end
 
disp(ASN);
disp(on);
disp(om);
disp(oc);
