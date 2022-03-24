function prueba_c

X=linspace(0,1,20);
[V,D]=use_for_c(30);
Y1=c(X,V,D,18);
plot(X,Y1,'red')

end