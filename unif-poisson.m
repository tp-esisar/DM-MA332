
function [mat] = unifPoisson (t,n,nbrea)
  
  mat = [];
  k = 0
  while k < nbrea
    i = poisson(t);
    if (length(i) == n)
      mat = [mat;i];
      k++;
    end
    
  end
endfunction


function [k] = arrivInterv (arrivVec,a,b)
  k=0;
  for i = arrivVec
    if ((i<=b) && (i>=a))
      k=k+1;
    end
  end
endfunction

function [kmoy] = arrivIntervMoy (mat,a,b)
  ks = [];
  for i = mat'
    ks = [ks arrivInterv(i',a,b)];
  end
  kmoy = mean(ks);

endfunction
%mat = unifPoisson(15,5,100);
%arrivIntervMoy(mat,3,4)
%arrivInterv(poisson(15),2,5)
%unifPoisson(15,5,10)