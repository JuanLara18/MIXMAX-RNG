function y=Phi_prime (z,i,N)

h=1/(N+1);

y = (z>(i-1)*h).*(z<(i+1)*h).*(((i-1)*h<=z).*(z<i*h).*(1/h)+(i*h<=z).*(z<=(i+1)*h).*(-(1/h)));




end
