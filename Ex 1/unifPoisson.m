%% Fonction qui fait des simultation d'arriv�e et selectionne uniquement celle qui ont n arriv�e et 0 et t

function [mat] = unifPoisson (t,n,nbrea)
  mat=[];
  k = 0;
  while k < nbrea
    i = poisson(t);
    if (length(i) == n)
      mat = [mat;i];
      k = k+1;
    end
  end
end
