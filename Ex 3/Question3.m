% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 3 : Chaines de Markov en temps discret
close all;
clear all;
clc;

%% Simultaion 
% Paramètres de la simulation
nbSemaine = 20;
nbPersonne = 1000;
etatInitial = 0;

% Pour chaque personne on simule l'état semaines après semaines
for i = 1:1:nbPersonne
    resultat(i,1) = etatInitial;
    for j = 1:1:nbSemaine
        resultat(i,j+1) = semaineSuivante(resultat(i,j));
    end
end

% On compte pour chaque semaine l'état de chaque personne
for i = 0:1:nbSemaine
    evolution(i+1,:) = compter(resultat(:,i+1));
end

% Affichage des résultats
figure(1);
plot(0:1:nbSemaine, evolution);
title('Evolution des états des personnes');
xlabel('Nb de semaines');
ylabel('Nb de personne dans chaque état');
legend('Non vacciné', 'Vacciné', 'Malade', 'Mort');

%On calcul la durée de vie de chaque personne
for i = 1:1:nbPersonne
    dureeVie(i) = dureeDeVie(resultat(i,:), nbSemaine);
end
sprintf('Duree avant d etre vaccine ou mort : %d', mean(dureeVie))


