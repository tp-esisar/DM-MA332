% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 4 : Files s'attentes
close all;
clear all;
clc;

%% Simultaion 
% Paramètres de la simulation
T=20;

% Calcul des instants d'arrivée, des temps de traitement et donc des fin de
% traitement
DebutTraitement = poisson(2, T);
TpsTraitement = duree(3,max(size(DebutTraitement)));
FinTraitement(1) = DebutTraitement(1)+TpsTraitement(1);
for i=2:max(size(TpsTraitement))
  FinTraitement(i) = max(FinTraitement(i-1)+TpsTraitement(i), DebutTraitement(i)+TpsTraitement(i));
end
DebutTraitement
TpsTraitement
FinTraitement

%% bcuiz
i=1;
j=1;
m=max(size(DebutTraitement))
nbFile=0;
total=0;
tpsInter=0;
tpsOldEvent=0;
while (i~=m && j~=m)
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
  