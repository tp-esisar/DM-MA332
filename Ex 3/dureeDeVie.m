%% Fonction qui retourne le temps que l'on met à être mort ou vacciné
%On compte le nombre de semaine ou a personne n'est pas dans un des 2 états
% "puits" c'est à dire vacciné (1) ou mort (3).

function i = dureeDeVie (data, duree)

for i = 1:1:duree
    if data(i+1) == 1 || data(i+1) == 3
        break;
    end
end
end

        
    