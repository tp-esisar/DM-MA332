function T=duree(lambda, n)
    T = [];
    i = 0;
    while i < n
        x = exprnd(1/lambda,1,1);
        T = [T x]; 
        i = i+1;
    end;
end
