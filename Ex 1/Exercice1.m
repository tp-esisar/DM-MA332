% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 1 : Processus de Poisson

clear all;
close all;
clc;

%% Question 1 : Simulation des arrivées
duree = 60; %Durée de la simulation

T = poisson(duree);     %On génére les arrivées
N = arrived(T, duree);  %On compte les arrivées

figure(1);              %Affichage de N(t)
plot(0:duree , N);
title('Graph de N(t)');
xlabel('t');
ylabel('N(t)');


%% Question 2
nbValeur = 50; %Nombre de chaque simulation à faire pour l'estimation
temps = [10, 20, 40, 60, 80, 100]; %Durée des simulations

for i=1:1:max(size(temps))
    data(i) = estimation(temps(i), nbValeur);
end
        
figure(2);
plot(temps , data, '*-');
title('Nombre moyen d arrivee');
xlabel('Duree max : T');
ylabel('Moyenne des N(t)');     
        

%% Question 3
nbValeur = 300;
I1(1) = arrivIntervMoy(unifPoisson(5,15,nbValeur),0,1);
I1(2) = arrivIntervMoy(unifPoisson(5,15,nbValeur),0,1);
I1moyen = mean(I1)

I2(1) = arrivIntervMoy(unifPoisson(5,15,nbValeur),1,3);
I2(2) = arrivIntervMoy(unifPoisson(5,15,nbValeur),1,3);
I2moyen = mean(I2)

I3(1) = arrivIntervMoy(unifPoisson(5,15,nbValeur),3,5);
I3(2) = arrivIntervMoy(unifPoisson(5,15,nbValeur),3,5);
I3moyen = mean(I3)
