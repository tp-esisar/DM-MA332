% Matière : MA 332 - Processus Stochastique
% Auteur : Alexis Bertrand, Guillaume Bruchon

%% Exercice 4 : Files s'attentes
close all;
clear all;
clc;

%% Question 1-2-3 
simulation(2/3,600);

%% Question 4
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

%% Question 5
clear all;
clc;
close all;
serveurs=2
duree=200
lint=10
s=[]; temp=[];
for i=0.1:0.01:1
    for j=1:lint
        temp = [temp nbMoyFile(serveurs,poisson(i,duree),1,duree)];
    end
    s = [s  mean(temp)];
end
figure(1);
plot(0.1:0.01:1, s);
title('Nombre de client moyen dans le file en fonction de Rho');
xlabel('Rho');
ylabel('Nt');
