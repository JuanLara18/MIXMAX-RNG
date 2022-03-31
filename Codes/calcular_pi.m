function calcular_pi
format long
intentos=50;
pres=1;
C=zeros(intentos,1);
for p=1:intentos
    randomx=[];
    randomy=[];
   contador=0;
   for m=1:pres
     A=mixmax(150,16562,487013230256099064);
     randomx=[randomx; A];
   end
    for m=1:pres
     B=mixmax(150,16562,487013230256099064);
     randomy=[randomy; B];
    end
   for j=1:length(randomx);
      if (sqrt((randomx(j)-0.5)^2+(randomy(j)-0.5)^2)<0.5)
          contador=contador+1;
      end
   end
   C(p)=contador/(length(randomx)*0.25);
   porcentaje_de_avance=100*p/intentos
end

pi_mixmax=mean(C)
desviacion_std=std(C)

end