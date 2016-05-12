% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 4 : Files s'attentes
close all;
clear all;
clc;

%% Question 1-2 
simulation(2/3,200);

%% Question 3
s=[]; temp=[];
for i=0.1:0.01:1
    for j=1:100
        temp = [temp simulation(i,200)];
    end
    s = [s  mean(temp)];
end
figure(1);
plot(0.1:0.01:1, s);
title('Nombre de client moyen dans le file en fonction de Rho');
xlabel('Rho');
ylabel('Nt');
