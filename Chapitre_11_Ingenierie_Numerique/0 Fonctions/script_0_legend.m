%% script_0_legend
% Ivan LIEBGOTT @ Novembre 2019
% Mod�lisation et Simulation des Syst�mes Multi-Physiques
% avec MATLAB - Simulink
% Ce script permet de tracer une s�rie de courbes en faisant varier un param�tre
% La l�gende est g�n�r�e automatiquement
% L'�quation de la courbe est stock�e dans la fonction my_2_function.m

% cr�ation d'une nouvelle fen�tre graphique
figure;
hold on;

% cr�ation du vecteur des temps
t = [0:0.001:60];

% boucle permettant le trac� avec la variation du param�tre
for k = 5:5:40
plot(t,my_2_function(t,k),'LineWidth',2); % appel de la fonction
end

% affichage de la grille
grid on;
grid minor;

% titre et �tiquettes des axes
title('sin(t)*exp(-t/a)','Color','red');
xlabel('Temps','Color','blue');
ylabel('Valeur du sinus','Color','blue');
% Ce script permet de tracer une s�rie de courbes en faisant varier un param�tre
% L'�quation de la courbe est stock�e dans la fonction my_2_function.m

% cr�ation d'une nouvelle fen�tre graphique
figure;
hold on;

% cr�ation du vecteur des temps
t = [0:0.001:60];

%cr�ation d'une cellule pour stocker les lignes de la l�gende
Titre_Legende = cell(1,1);
ind_Legende = 1;

% boucle permettant le trac� avec la variation du param�tre
for k = 5:5:40
plot(t,my_2_function(t,k),'LineWidth',2);
Titre_Legende{1,ind_Legende} =  'a=' + string(k); % cr�ation de la ligne de la l�gende
ind_Legende = ind_Legende + 1;
end

% affichage de la l�gende
legend(Titre_Legende);

% affichage de la grille
grid on;
grid minor;

% titre et �tiquettes des axes
titre = texlabel('sin(t).e^((-t/a)) en fonction de t');
title(titre,'Color','red');
xlabel('Temps t en (s)','Color','blue');
ylabel('Valeur du sinus amorti','Color','blue');


