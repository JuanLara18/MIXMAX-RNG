function mixmax_pi
format long
%definicion de los parametros que usaremos:
intentos=50;
pres=1;
m=120;
N=20693;
%s=487013230256099064;
s=0;
skipper=N+1;

C=zeros(intentos,1);

for p=1:intentos
    randomx=[];
    randomy=[];
   contador=0;

   for m=1:pres
     A=mixmax(m,N,s);
     good_indexes= mod(1:N,skipper)~=0;
     A=A(good_indexes);
     randomx=[randomx; A];
   end
    for m=1:pres
     B=mixmax(m,N,s);
     good_indexes= mod(1:N,skipper)~=0;
     B=B(good_indexes);
     randomy=[randomy; B];
    end
   for j=1:length(randomx);
      if (randomy(j)<1/(1+(randomx(j))^2))
          contador=contador+1;
      end
   end
   C(p)=4*contador/length(randomx);
   porcentaje_de_avance=100*p/intentos
   
end

num_de_puntos= length(randomx)
pi_mixmax=mean(C)
desviacion_std=std(C)


end