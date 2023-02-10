function u=solucion_ecuacion(z,M_t)

N = 30;

delta_t = 0.01;

h=1/(N+1);


U_anterior = @(x) 0; %x_0 como u_0

U_dosanterior = @(x) 0.1*exp(-(50*x).^2); %v_0 como u_{-1}

M = zeros(N+2);

[V,D]=use_for_c(30);

for p=1:M_t

for i=0:N+1
    for j=0:N+1
        
        %fun1_ij = @(x) Phi(x,i,N)*Phi(x,j,N);
        %fun2_ij = @(x) e^c*Phi_prime(x,i,N)*Phi_prime(x,j,N); %cambiar c por c(x,w)
        
       M(i+1,j+1) = 1/(delta_t^2)*integral(@(x) Phi(x,i,N).*Phi(x,j,N),0,1)+integral(@(x) exp(c(x,V,D,30)).*Phi_prime(x,i,N).*Phi_prime(x,j,N),0,1);
    end
    
end




b = zeros(N+2,1);

for i=0:N+1
 
        
   b(i+1) = 2/(delta_t^2).*integral(@(x) U_anterior(x).*Phi(x,i,N),0,1)-1/(delta_t^2).*integral(@(x) U_dosanterior(x).*Phi(x,i,N),0,1);
end

y=linsolve(M,b);

U_parcial= @(x) 0;

    
for i=0:N+1
    

  
    U_parcial= @(x) U_parcial(x)+y(i+1)*Phi(x,i,N);
    
end




U_dosanterior=U_anterior;

U_anterior=U_parcial;

p

end

u=U_parcial(z);

end