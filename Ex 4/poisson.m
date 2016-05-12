%% Fonction qui g�n�re des arriv�es, suivant une loi de Poisson.
%Pour cela, on sait que le temps inter-arriv� Tn suit une loi exponetielle
% de param�tre Lambda.
function T=poisson(lambda, t)
    T = [];
    x = exprnd(1/lambda,1,1);
    while x < t
        T = [T x]; 
        x = T(end)+exprnd(1/lambda,1,1);
    end;
end
