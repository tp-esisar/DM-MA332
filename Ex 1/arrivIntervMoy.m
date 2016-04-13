%% Fonction qui calcul le nombre moyen d'arrivée sur un intervalle à partir d'une matrice de simulation

function [kmoy] = arrivIntervMoy (mat,a,b)
  ks = [];
  for i = mat'
    ks = [ks arrivInterv(i',a,b)];
  end
  kmoy = mean(ks);

end