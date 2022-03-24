function erre = mixmax(m, n, s)   
    b = matriz(n, s);
    %1/(2^61 -1) *
    r =  ones(n, 1);
    for k=1:n
        c=clock;
        r(k)=((c(6))/k);
    end
    for i = 1:m % se repite m veces
        r = b*r;        
    for j=1:n
       r(j)=r(j)-floor(r(j));
    end
   
    end
erre=r;
end