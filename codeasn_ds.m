ASN=1000;
 
g=1;
v=2;
r1=6;
r=4;
alfa=0.1;
beta=0.1;
 
p0=1-exp(-((g*gamma(1+1/v))^v));
p1=1-exp(-r1^(-v)*(g*gamma(1+1/v))^v);
p=1-exp(-r^(-v)*(g*gamma(1+1/v))^v);
 
 
for n1=1:100
    for n2=1:n1
        AS=n1+n2*n1*p*(1-p)^(n1-1);
        
        if (1-p0)^n1+n1*((1-p0)^n1)*p0*((1-p0)^(n2-1))<beta &&...
                  (1-p1)^n1+n1*((1-p1)^n1)*p1*((1-p1)^(n2-1))>1-alfa && AS<ASN
              
             ASN=AS;
             nf1=n1;
             nf2=n2;
        else 
            continue 
        end
             
     end
 end
disp(nf1);
disp(nf2);
disp(ASN);
