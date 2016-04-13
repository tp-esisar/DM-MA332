% Mati�re : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 2 : Chaines de Markov en temps discret
close all;
clear all;
clc;

%% Simultaion 
% Param�tres de la simulation
nbSemaine = 40;
nbPersonne = 1000;
produitInitial = 'B';

% Pour chaque personne on simule les produits achet�s semaines apr�s semaines
for i = 1:1:nbPersonne
    resultat(i,1) = produitInitial;
    for j = 1:1:nbSemaine
        resultat(i,j+1) = semaineSuivante(resultat(i,j));
    end
end

% On compte pour chaque semaine le nombre de produit de chaque type achet�s
for i = 0:1:nbSemaine
    evolution(i+1,:) = compter(resultat(:,i+1));
end

% Affichage des r�sultats
figure(1);
plot(0:1:nbSemaine, evolution);
title('Evolution des achats des diff�rents produits');
xlabel('Nb de semaines');
ylabel('Nb de personne qui achetent le produit');
legend('Produit A', 'Produit B', 'Produit C');
