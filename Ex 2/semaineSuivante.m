%% Fonction qui simule quel est le produit achet� par le client
% La fonction prend donc en compte le produit achet� la semaine derni�re et
% retourne le produit que le client achete cette semaine.
% On g�n�re des nombres al�atoires avec la fonction RAND

function suiv=semaineSuivante(prec)
    if (prec == 'A') %Si le produit pr�c�dent est le A
        if (rand < 0.60)
            suiv = prec;
        else
            if (rand < 0.50)
                suiv = 'B';
            else
                suiv = 'C';
            end
        end
    end
    
    if (prec == 'B') %Si le produit pr�c�dent est le B
        if (rand < 0.40)
            suiv = prec;
        else
            if (rand < 0.50)
                suiv = 'A';
            else
                suiv = 'C';
            end
        end
    end
        
    if (prec == 'C') %Si le produit pr�c�dent est le C
        if (rand < 0.10)
            suiv = prec;
        else
            if (rand < 0.50)
                suiv = 'A';
            else
                suiv = 'B';
            end
        end
    end
    
end
    
