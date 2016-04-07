function [kmoy] = arrivIntervMoy (mat,a,b)
  ks = [];
  for i = mat'
    ks = [ks arrivInterv(i',a,b)];
  end
  kmoy = mean(ks);

end