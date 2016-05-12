function T=poisson(lambda, t)
    T = [];
    x = exprnd(1/lambda,1,1);
    while x < t
        T = [T x]; 
        x = T(end)+exprnd(1/lambda,1,1);
    end;
end
