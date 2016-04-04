% Mati�re : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 1 : Processus de Poisson

clear all;
close all;
clc;

%% Question 1 : Simulation des arriv�es
duree = 60; %Dur�e de la simulation

T = poisson(duree);     %On g�n�re les arriv�es
N = arrived(T, duree);  %On compte les arriv�es

figure(1);              %Affichage de N(t)
plot(0:duree , N);
title('Graph de N(t)');
xlabel('t');
ylabel('N(t)');


%% Question 2
nbValeur = 50; %Nombre de chaque simulation � faire pour l'estimation
temps = [10, 20, 40, 60, 80, 100]; %Dur�e des simulations

for i=1:1:max(size(temps))
    data(i) = estimation(temps(i), nbValeur);
end
        
figure(2);
plot(temps , data);
title('Nombre moyen d arrivee');
xlabel('Duree max : T');
ylabel('Moyenne des N(t)');     

% Sur la figure 2, on peut voir qu'avec la simulation obtenu avec un grand
% nombre d'essai, on obtient une droite parfaitement lin�aire.
% Si on rel�ve plusieurs points :
%       - N(100) = 300.2 soit presque 300
%       - N(60) = 176.8 soit presque 180
%       - N(10) = 31.24 soit presque 30
% On remarque que le coeficiant directeur de cette droite est 3, ce qui
% corrspond � la valeur de Lambda.
% En effet, on a pu voir dans le cours que l'on peut estimer :
%           Lambda = N(T) / T           soit N(T) = T * Lambda
% Et donc la fonction N(T) doit bien �tre lin�aire, de coeficiant Lambda,
% la simulation correspond bien � la th�orie !
        

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

