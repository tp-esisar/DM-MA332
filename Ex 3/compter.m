%% Fonction qui compte le nombre de personne dans chaque �tat
% On compte le nombre de personne dans chaque �tat et on retourne un 
% vecteur avec les r�sultats : [0 1 2 3]

function result=compter(mat)
result=[0 0 0 0];    
for i = 1:1:max(size(mat))

        switch mat(i)
            case 0 
                result(1) = result(1)+ 1;
            case 1 
                result(2) = result(2)+ 1;
            case 2
                result(3) = result(3)+ 1;
            case 3
                result(4) = result(4)+ 1;
        end
    end
end

        
            