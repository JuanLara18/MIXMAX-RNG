function m = matriz(n,s)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    m = ones(n);
    for j = 2:n
        for i = j:n
            if i == j
                m(i,j) = 2;
            else
                m(i,j) = m(i-1,j) + 1;
            end
        end
    end
    m(3,2) = 3 + s;
end

