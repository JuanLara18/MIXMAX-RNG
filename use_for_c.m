function [y1,y2]=use_for_c(N)

h=1/(N+1);
 M=zeros(N+2);
 
 for i=0:N+1
     
     Q1=i*h;
     
     for j=0:N+1
        
          Q2=j*h;
          
          M(i+1,j+1)=exp(-abs(Q1-Q2).^(3/2));
         
     end 
 end

[V,D]=eig(M);

y1=V;
y2=D;

end