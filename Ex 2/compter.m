%% Fonction qui compte le nombre de produit achet� de chaque type
% On compte le nombre d'achat de chaque type de produit et on retourne un 
% vecteur avec les r�sultats : [A B C]

function result=compter(mat)
result=[0 0 0];    
for i = 1:1:max(size(mat))

        switch mat(i)
            case 'A' 
                result(1) = result(1)+ 1;
            case 'B' 
                result(2) = result(2)+ 1;
            case 'C'
                result(3) = result(3)+ 1;
        end
    end
end

        
            