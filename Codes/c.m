function c_final=c(x,V,D,N)

h=1/(N+1);

c_parcial=0;

for i=1:20
    
y=V(:,i);
  
U_parcial= @(x) 0;

for j=0:N

    U_parcial= @(x) U_parcial(x)+(j.*h<=x<(j+1).*h).*(((y(j+2)-y(j+1))/h).*(x-j*h)+y(j+1));
    
end
   U_parcial= @(x) U_parcial(x)+(x==1).*y(N+2);
   
    Y=randn;
   
    c_parcial=c_parcial+sqrt(D(i,i))*U_parcial(x)*Y;
    
end
   
    c_final=c_parcial;
    
end
