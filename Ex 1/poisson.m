%% Fonction qui génére des arrivées, suivant une loi de Poisson.
%Pour cela, on sait que le temps inter-arrivé Tn suit une loi exponetielle
% de paramétre Lambda.
%On stocke toutes les heures d'arrivées dans un tableau T (et donc on 
% cumule les temps inter-arrivé pour savoir à quel moment il est arrivé).
%La fonction retourne alors un vecteur contenant les temps d'arrivé entre 0
% et le temps 't' passé en paramétre.

function T=poisson(t)
    lambda = 3; %Définition du Lamdba
    T = [];
    %On génére la premiére arrivée. Attention à bien prendre l'inverse de
    % Lamdba car la fonction de la loi exponetielle de Matlab 'exprnd'
    % travail avec u qui est l'inverse de notre Lambda défini dans le
    % cours.
    x = exprnd(1/lambda,1,1);
    while x < t
        %On ajoute dans le tableau des arrivées à la suite, une nouelle arrivée
        T = [T x]; 
        x = T(end)+exprnd(1/lambda,1,1);
    end;
end
