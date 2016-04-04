%% Fonction permettant de calculer plusieurs fois les arrivées aléatoire afin de calculer leur moyenne
%Prend en entrée le nombre de valeur sur lequel il faut calculer la moyenne
% et la durée de l'expérience.
%Retourne le N(t) moyen de toutes ces expériences


function N=estimation(duree, nbValeur)
    for i = 1:1:nbValeur
        T(i) = length(poisson(duree));
    end
    N = mean(T);
end