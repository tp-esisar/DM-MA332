

function suiv=semaineSuivante(prec)
    alea = rand;
    if (prec == 0)
        if (alea < 0.30)
            suiv = prec;
        elseif (alea > 0.50)
            suiv = 2
        else 
            suiv =1
        end
    end
    
    if (prec == 1)
        suiv = prec;
    end
    
    if (prec == 2)
        if (alea < 0.10)
            suiv = 3;
        elseif (alea > 0.55)
            suiv = 0
        else 
            suiv =1
        end
    end
    
    if (prec == 3)
        suiv = prec;
    end

    
end
    
