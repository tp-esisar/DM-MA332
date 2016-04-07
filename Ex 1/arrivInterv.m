function k = arrivInterv (arrivVec,a,b)
  k=0;
  for i = arrivVec
    if ((i<=b) && (i>=a))
      k=k+1;
    end
  end
end