% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 3 : Chaines de Markov en temps discret
close all;
clear all;
clc;

%% Simultaion 
% Paramètres de la simulation
nbSemaine = 52;
nbPersonne = 1000;
etatInitial = 0;

% Pour chaque personne on simule l'état semaines après semaines
for i = 1:1:nbPersonne
    resultat(i,1) = etatInitial;
    for j = 2:1:nbSemaine
        resultat(i,j) = semaineSuivante(resultat(i,j-1));
    end
end

% On compte pour chaque semaine l'état de chaque personne
for i = 1:1:nbSemaine
    evolution(i,:) = compter(resultat(:,i));
end

% Affichage des résultats
figure(1);
plot(1:1:nbSemaine, evolution);
title('Evolution des états des personnes');
xlabel('Nb de semaines');
ylabel('Nb de personne dans chaque état');
legend('Non vacciné', 'Vacciné', 'Malade', 'Mort');
