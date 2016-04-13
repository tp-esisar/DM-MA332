%% Fonction qui simule dans quel �tat va �tre une personne
% La fonction prend donc en compte l'�tat de la semaine p�c�dente et
% retourne l'�tat de la personne pour cette semaine.
% On g�n�re des nombres al�atoires avec la fonction RAND

function suiv=semaineSuivante(prec)
    alea = rand;
    if (prec == 0) %Si la personne �tait saine
        if (alea < 0.30) %Elle peut le rester
            suiv = prec;
        elseif (alea > 0.50) %Se faire vacciner
            suiv = 1;
        else %Ou tomber malade
            suiv = 2;
        end
    end
    
    if (prec == 1) %Si la personne est vaccin�e, elle reste dans cet �tat
        suiv = prec;
    end
    
    if (prec == 2) % Si la personne est malade
        if (alea < 0.10) %Elle peut mourrir
            suiv = 3;
        elseif (alea > 0.55) %%Ou guerir
            suiv = 0;
        else %Ou se faire vacciner
            suiv =1;
        end
    end
    
    if (prec == 3) %Si la personne est morte, elle le reste.
        suiv = prec;
    end

    
end
    
