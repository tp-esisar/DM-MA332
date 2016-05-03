T=10;
DebutTraitement = poisson(2, T);
TpsTraitement = duree(3,10);
FinTraitement(1) = DebutTraitement(1)+TpsTraitement(1);
for i=2:max(size(TpsTraitement))
  FinTraitement(i) = max(FinTraitement(i-1)+TpsTraitement(i), DebutTraitement(i)+TpsTraitement(i));
end
DebutTraitement
TpsTraitement
FinTraitement

i=1;
j=1;
m=max(size(DebutTraitement))
nbFile=0;
total=0;
tpsInter=0;
tpsOldEvent=0;
while (i!=m && j!=m)
  total = total + nbFile*tpsInter
  if DebutTraitement(i) < FinTraitement(j) && i<=m
    tpsOldEvent=DebutTraitement(i);
    nbFile = nbFile+1;
    i = i+1;
  else
    tpsOldEvent=FinTraitement(j);
    nbFile = nbFile-1;
    j = j+1; 
  end
  tpsInter = min(DebutTraitement(i),FinTraitement(j))-tpsOldEvent;
end
  