function matlab_pi
format long
N=16562;
intentos=50;
C=zeros(intentos,1);
for p=1:intentos
contador=0;
A=rand(N,1);
B=rand(N,1);
for j=1:N;
    if sqrt((A(j)-0.5)^2+(B(j)-0.5)^2)<0.5
        contador=contador+1;
    end
end

   C(p)=contador/(length(A)*0.25);
   porcentaje_de_avance=100*p/intentos
end

pi_matlab=mean(C)
desviacion_std=std(C)
end