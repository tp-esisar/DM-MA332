%% Fonction qui permet de passer des heures d'arrivée à N(t)
%Elle prend en paramètre le tableau avec les heures d'arrivée et la durée
% totale, et retourne un vecteur qui, minute par minute donne le nombre
% d'arrivée.
%On parcours alors minute par minute le tableau des temps d'arrivée afin de
% savoir le nombre d'arrivé pour chaque minute.

function N=arrived(T, t)
    for i = 0:1:t %On crée un vecteur minute par minute
        j = 0;
        %On compte le nombre de personne qui sont arrivée (à partir des
        % temps d'arrivé)
        while (T(j+1)<i) 
            j = j+1;
        end
        N(i+1) = j; %On inscrit le nombre d'arrivée dans le tableau
    end
end
            