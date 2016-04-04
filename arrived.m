%% Fonction qui permet de passer des heures d'arriv�e � N(t)
%Elle prend en param�tre le tableau avec les heures d'arriv�e et la dur�e
% totale, et retourne un vecteur qui, minute par minute donne le nombre
% d'arriv�e.
%On parcours alors minute par minute le tableau des temps d'arriv�e afin de
% savoir le nombre d'arriv� pour chaque minute.

function N=arrived(T, t)
    for i = 0:1:t %On cr�e un vecteur minute par minute
        j = 0;
        %On compte le nombre de personne qui sont arriv�e (� partir des
        % temps d'arriv�)
        while (T(j+1)<i) 
            j = j+1;
        end
        N(i+1) = j; %On inscrit le nombre d'arriv�e dans le tableau
    end
end
            