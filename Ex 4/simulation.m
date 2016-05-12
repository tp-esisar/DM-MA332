%% Fonction qui simule l'évolution d'une file M/M/1 et retour la moyenne de client dans la file
%Pour cela, on génére des arrivées et des temps de traitement que l'on
%combine afin davoir les temps de sortie
%Ensuite, en regarde à chaque instant le nombre de client dans la file.

function retour = simulation (rho, T)
% Calcul des instants d'arrivée, des temps de traitement et fin de traitement
DebutTraitement = poisson(rho, T);
maximum = max(size(DebutTraitement));
TpsTraitement = duree(1,maximum);
FinTraitement(1) = DebutTraitement(1)+TpsTraitement(1);
for i=2:maximum
  FinTraitement(i) = max(FinTraitement(i-1)+TpsTraitement(i), DebutTraitement(i)+TpsTraitement(i));
end

%Calcul du nombre de client dans la file
i=1; j=1; nbFile=0; TimePrec = 0; time=0; somme=0;
while (i~=maximum && j~=maximum)
    if DebutTraitement(i) < FinTraitement(j) && i<=maximum
        time = DebutTraitement(i);
        nbFile = nbFile+1;
        i = i+1;
    else
        time = FinTraitement(j);
        nbFile = nbFile-1;
        j = j+1;
    end
    somme = somme + nbFile*(time-TimePrec);
    TimePrec = time;
end
retour = somme/FinTraitement(maximum);
