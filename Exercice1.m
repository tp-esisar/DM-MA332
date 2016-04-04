% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 1 : Processus de Poisson

clear all;
close all;
clc;

%% Question 1 : Simulation des arrivées
duree = 60;

T = poisson(duree);     %On génére les arrivées
N = arrived(T, duree);  %On compte les arrivées

figure(1);              %Affichage de N(t)
plot(0:duree , N);
title('Graph de N(t)');
xlabel('t');
ylabel('N(t)');


%% Question 2
nbValeur = 50;

temps = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
for i=1:1:max(size(temps))
    data(i) = estimation(temps(i), nbValeur);
end
        
figure(2);
plot(temps , data);
title('Nombre moyen d arrivee');
xlabel('Duree max : T');
ylabel('Moyenne des N(t)');     
        

%% Question 3
