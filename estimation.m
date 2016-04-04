%% Fonction permettant de g�n�ner plusieurs fois des arriv�es al�atoire afin de calculer leur moyenne
%Prend en entr�e le nombre de valeur sur lequel il faut calculer la moyenne
% et la dur�e de l'exp�rience.
%Retourne le N(t) moyen de toutes ces exp�riences

function N=estimation(duree, nbValeur)
    for i = 1:1:nbValeur
        %On prend la taille du vecteur qui contient les temps d'arriv�, ce
        % qui nous donne le nombre d'arriv�e
        T(i) = length(poisson(duree));
    end
    N = mean(T);
end
