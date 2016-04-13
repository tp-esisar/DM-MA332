%% Fonction qui calcul le nombre moyen d'arriv�e sur un intervalle � partir d'une matrice de simulation

function [kmoy] = arrivIntervMoy (mat,a,b)
  ks = [];
  for i = mat'
    ks = [ks arrivInterv(i',a,b)];
  end
  kmoy = mean(ks);

end