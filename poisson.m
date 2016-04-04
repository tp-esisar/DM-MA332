function T=poisson(t)
    lambda = 3;
    T=[exprnd(lambda,1,1)];
    while T(end) < t
        T = [T T(end)+exprnd(lambda,1,1)];
    end;
end