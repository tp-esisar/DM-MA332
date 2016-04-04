function [N]=poisson(t)
    lambda = 3;
    N = 0;
    T = 0;
    while T < t
        T = T + exprnd(lambda,1,1);
        N = N +1;
    end;
end