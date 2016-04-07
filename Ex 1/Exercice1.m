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
plot(temps , data);
title('Nombre moyen d arrivee');
xlabel('Duree max : T');
ylabel('Moyenne des N(t)');     

% Sur la figure 2, on peut voir qu'avec la simulation obtenu avec un grand
% nombre d'essai, on obtient une droite parfaitement linéaire.
% Si on relève plusieurs points :
%       - N(100) = 300.2 soit presque 300
%       - N(60) = 176.8 soit presque 180
%       - N(10) = 31.24 soit presque 30
% On remarque que le coeficiant directeur de cette droite est 3, ce qui
% corrspond à la valeur de Lambda.
% En effet, on a pu voir dans le cours que l'on peut estimer :
%           Lambda = N(T) / T           soit N(T) = T * Lambda
% Et donc la fonction N(T) doit bien être linéaire, de coeficiant Lambda,
% la simulation correspond bien à la théorie !
        

%% Question 3
%mat = unifPoisson(5,15,500);
arrivIntervMoy(unifPoisson(5,15,500),3,5)
arrivIntervMoy(unifPoisson(5,15,500),3,5)
arrivIntervMoy(unifPoisson(5,15,500),3,5)
arrivIntervMoy(unifPoisson(5,15,500),3,5)

arrivIntervMoy(unifPoisson(5,15,500),1,3)
arrivIntervMoy(unifPoisson(5,15,500),1,3)
arrivIntervMoy(unifPoisson(5,15,500),1,3)
arrivIntervMoy(unifPoisson(5,15,500),1,3)

