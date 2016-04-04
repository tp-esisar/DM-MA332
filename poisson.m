%% Fonction qui g�n�re des arriv�es, suivant une loi de Poisson.
%Pour cela, on sait que le temps inter-arriv� Tn suit une loi exponetielle
% de param�tre Lambda.
%On stocke toutes les heures d'arriv�es dans un tableau T (et donc on 
% cumule les temps inter-arriv� pour savoir � quel moment il est arriv�).
%La fonction retourne alors un vecteur contenant les temps d'arriv� entre 0
% et le temps 't' pass� en param�tre.

function T=poisson(t)
    lambda = 3; %D�finition du Lamdba
    
    %On g�n�re la premi�re arriv�e. Attention � bien prendre l'inverse de
    % Lamdba car la fonction de la loi exponetielle de Matlab 'exprnd'
    % travail avec u qui est l'inverse de notre Lambda d�fini dans le
    % cours.
    T=[exprnd(1/lambda,1,1)];
    while T(end) < t
        %On ajoute dans le tableau les arriv�es, � la suite, une nouelle arriv�e
        T = [T T(end)+exprnd(1/lambda,1,1)]; 
    end;
end
