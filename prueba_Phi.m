function prueba_Phi

X=linspace(0,1,1000);
Y1=Phi(X,3,9);
Y2=Phi(X,4,9);


figure
plot(X,Y1,'red',X,Y2,'blue')

end