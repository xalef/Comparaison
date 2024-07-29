clear all ; close all ; clc

GRIMM = importdata("GRIMM_EPF.xlsx");
SMPS = importdata("SMPS_EPF.xlsx");
PDA = importdata("PDA_EPF.xlsx");

% Pages de documents excel:

% GRIMM : 
% - Mesures DEHS: Test1, Test2, Test3
% - Mesures Eau: Test4, Test5, Test6
% - Mesures Séché: Test7, Test8, Test9
% - Distribution de masse: Test10, Test11, Test12

% SMPS : 
% - Mesures DEHS: Feuil1, Feuil2, Feuil3
% - Mesures Eau: Feuil4, Feuil5, Feuil6

% PDA :
% - Mesures DEHS: Feuil1, Feuil2, Feuil3
% - Mesures Eau: Feuil4, Feuil5, Feuil6

% Cascade Impactor : 
% - Mesures DEHS: 14 filtres
% - Mesures Eau: 14 filtres

%% GRIMM

N_GRIMM1 = [];
longueur = size(GRIMM.data.Test1);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 2:longueur(2)
N_GRIMM1 =  [N_GRIMM1;mean(GRIMM.data.Test1(:,n))];
N_GRIMM1(n-1) = N_GRIMM1(n-1)/(log10(Dp_GRIMM(n))-log10(Dp_GRIMM(n-1)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM2 = [];
longueur = size(GRIMM.data.Test2);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM2 =  [N_GRIMM2;mean(GRIMM.data.Test2(:,n))];
N_GRIMM2(n) = N_GRIMM2(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM3 = [];
longueur = size(GRIMM.data.Test3);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM3 =  [N_GRIMM3;mean(GRIMM.data.Test3(:,n))];
N_GRIMM3(n) = N_GRIMM3(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM4 = [];
longueur = size(GRIMM.data.Test4);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 2:longueur(2)
N_GRIMM4 =  [N_GRIMM4;mean(GRIMM.data.Test4(:,n))];
N_GRIMM4(n-1) = N_GRIMM4(n-1)/(log10(Dp_GRIMM(n))-log10(Dp_GRIMM(n-1)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM5 = [];
longueur = size(GRIMM.data.Test5);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM5 =  [N_GRIMM5;mean(GRIMM.data.Test5(:,n))];
N_GRIMM5(n) = N_GRIMM5(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM6 = [];
longueur = size(GRIMM.data.Test6);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM6 =  [N_GRIMM6;mean(GRIMM.data.Test6(:,n))];
N_GRIMM6(n) = N_GRIMM6(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM7 = [];
longueur = size(GRIMM.data.Test7);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 2:longueur(2)
N_GRIMM7 =  [N_GRIMM7;mean(GRIMM.data.Test7(:,n))];
N_GRIMM7(n-1) = N_GRIMM7(n-1)/(log10(Dp_GRIMM(n))-log10(Dp_GRIMM(n-1)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM8 = [];
longueur = size(GRIMM.data.Test8);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM8 =  [N_GRIMM8;mean(GRIMM.data.Test8(:,n))];
N_GRIMM8(n) = N_GRIMM8(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM9 = [];
longueur = size(GRIMM.data.Test9);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM9 =  [N_GRIMM9;mean(GRIMM.data.Test9(:,n))];
N_GRIMM9(n) = N_GRIMM9(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];


M_GRIMM10 = [];
longueur = size(GRIMM.data.Test10);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 2:longueur(2)
M_GRIMM10 =  [M_GRIMM10;mean(GRIMM.data.Test10(:,n))];
M_GRIMM10(n-1) = M_GRIMM10(n-1)/(log10(Dp_GRIMM(n))-log10(Dp_GRIMM(n-1)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

M_GRIMM11 = [];
longueur = size(GRIMM.data.Test11);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
M_GRIMM11 =  [M_GRIMM11;mean(GRIMM.data.Test11(:,n))];
M_GRIMM11(n) = M_GRIMM11(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

M_GRIMM12 = [];
longueur = size(GRIMM.data.Test12);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
M_GRIMM12 =  [M_GRIMM12;mean(GRIMM.data.Test12(:,n))];
M_GRIMM12(n) = M_GRIMM12(n)/(log10(Dp_GRIMM12(n+1))-log10(Dp_GRIMM12(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

%% SMPS

N_SMPS1 = [];
longueur = size(SMPS.Feuil1);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil1(n,i))];
    end
    N_SMPS1 =  [N_SMPS1;mean(N_moy)];
end
Dp_SMPS1 = 0.001*SMPS.Feuil1(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS1 = N_SMPS1/0.001;%conversion de cm^3 à L

N_SMPS2 = [];
longueur = size(SMPS.Feuil2);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil2(n,i))];
    end
    N_SMPS2 =  [N_SMPS2;mean(N_moy)];
end
Dp_SMPS2 = 0.001*SMPS.Feuil2(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS2 = N_SMPS2/0.001;%conversion de cm^3 à L

N_SMPS3 = [];
longueur = size(SMPS.Feuil3);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil3(n,i))];
    end
    N_SMPS3 =  [N_SMPS3;mean(N_moy)];
end
Dp_SMPS3 = 0.001*SMPS.Feuil3(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS3 = N_SMPS3/0.001;%conversion de cm^3 à L


N_SMPS4 = [];
longueur = size(SMPS.Feuil4);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil4(n,i))];
    end
    N_SMPS4 =  [N_SMPS4;mean(N_moy)];
end
Dp_SMPS4 = 0.001*SMPS.Feuil4(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS4 = N_SMPS4/0.001;%conversion de cm^3 à L

N_SMPS5 = [];
longueur = size(SMPS.Feuil5);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil5(n,i))];
    end
    N_SMPS5 =  [N_SMPS5;mean(N_moy)];
end
Dp_SMPS5 = 0.001*SMPS.Feuil5(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS5 = N_SMPS5/0.001;%conversion de cm^3 à L

N_SMPS6 = [];
longueur = size(SMPS.Feuil6);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil6(n,i))];
    end
    N_SMPS6 =  [N_SMPS6;mean(N_moy)];
end
Dp_SMPS6 = 0.001*SMPS.Feuil6(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS6 = N_SMPS6/0.001;%conversion de cm^3 à L


N_SMPS7 = [];
longueur = size(SMPS.Feuil7);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil7(n,i))];
    end
    N_SMPS7 =  [N_SMPS7;mean(N_moy)];
end
Dp_SMPS7 = 0.001*SMPS.Feuil7(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS7 = N_SMPS7/0.001;%conversion de cm^3 à L

N_SMPS8 = [];
longueur = size(SMPS.Feuil8);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil8(n,i))];
    end
    N_SMPS8 =  [N_SMPS8;mean(N_moy)];
end
Dp_SMPS8 = 0.001*SMPS.Feuil8(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS8 = N_SMPS8/0.001;%conversion de cm^3 à L

N_SMPS9 = [];
longueur = size(SMPS.Feuil9);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil9(n,i))];
    end
    N_SMPS9 =  [N_SMPS9;mean(N_moy)];
end
Dp_SMPS9 = 0.001*SMPS.Feuil9(:,1); %Divise par 1000 parce que les diamètres sont en nm
N_SMPS9 = N_SMPS9/0.001;%conversion de cm^3 à L




%% PDA

S = pi*(2*0.1531*10^(-3))^2/2;%Surface projetée du volume de mesure
Vmoy = (0.044+0.042+0.044)/3; %Vitesse moyenne dans la direction V
conv = 1/1000; %Conversion m^3 en L
N_PDA = [];
N_PDA2 = [];
N_PDA3 = [];
N_PDA4 = [];
N_PDA5 = [];
N_PDA6 = [];
N_PDA7 = [];
N_PDA8 = [];
N_PDA9 = [];
longueur1 = size(PDA.Feuil1);
longueur2 = size(PDA.Feuil2);
longueur3 = size(PDA.Feuil3);
longueur4 = size(PDA.Feuil4);
longueur5 = size(PDA.Feuil5);
longueur6 = size(PDA.Feuil6);
longueur7 = size(PDA.Feuil7);
longueur8 = size(PDA.Feuil8);
longueur9 = size(PDA.Feuil9);

for i = 1:longueur1(1)
N_PDA = [N_PDA;(1/60)*mean(PDA.Feuil1(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA = PDA.Feuil1(:,1);
dN_PDA = [];
for j = 2:longueur1(1)
    dN_PDA = [dN_PDA;(N_PDA(j-1)/(log10(Dp_PDA(j))-log10(Dp_PDA(j-1))))];
end
Dp_PDA = Dp_PDA(1:end-1);

for i = 1:longueur2(1)
N_PDA2 = [N_PDA2;(1/60)*mean(PDA.Feuil2(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA2 = PDA.Feuil2(:,1);
dN_PDA2 = [];
for j = 2:longueur1(1)
    dN_PDA2 = [dN_PDA2;(N_PDA2(j-1)/(log10(Dp_PDA2(j))-log10(Dp_PDA2(j-1))))];
end
Dp_PDA2 = Dp_PDA2(1:end-1);

for i = 1:longueur3(1)
N_PDA3 = [N_PDA3;(1/60)*mean(PDA.Feuil3(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA3 = PDA.Feuil3(:,1);
dN_PDA3 = [];
for j = 2:longueur1(1)
        dN_PDA3 = [dN_PDA3;(N_PDA3(j-1)/(log10(Dp_PDA3(j))-log10(Dp_PDA3(j-1))))];
end
Dp_PDA3 = Dp_PDA3(1:end-1);


for i = 1:longueur4(1)
N_PDA4 = [N_PDA4;(1/60)*mean(PDA.Feuil4(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA4 = PDA.Feuil4(:,1);
dN_PDA4 = [];
for j = 2:longueur4(1)
    dN_PDA4 = [dN_PDA4;(N_PDA4(j-1)/(log10(Dp_PDA4(j))-log10(Dp_PDA4(j-1))))];
end
Dp_PDA4 = Dp_PDA4(1:end-1);

for i = 1:longueur5(1)
N_PDA5 = [N_PDA5;(1/60)*mean(PDA.Feuil5(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA5 = PDA.Feuil5(:,1);
dN_PDA5 = [];
for j = 2:longueur1(1)
    dN_PDA5 = [dN_PDA5;(N_PDA5(j-1)/(log10(Dp_PDA5(j))-log10(Dp_PDA5(j-1))))];
end
Dp_PDA5 = Dp_PDA5(1:end-1);

for i = 1:longueur6(1)
N_PDA6 = [N_PDA6;(1/60)*mean(PDA.Feuil6(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA6 = PDA.Feuil6(:,1);
dN_PDA6 = [];
for j = 2:longueur1(1)
        dN_PDA6 = [dN_PDA6;(N_PDA6(j-1)/(log10(Dp_PDA6(j))-log10(Dp_PDA6(j-1))))];
end
Dp_PDA6 = Dp_PDA6(1:end-1);


for i = 1:longueur7(1)
N_PDA7 = [N_PDA7;(1/60)*mean(PDA.Feuil7(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA7 = PDA.Feuil7(:,1);
dN_PDA7 = [];
for j = 2:longueur1(1)
    dN_PDA7 = [dN_PDA7;(N_PDA7(j-1)/(log10(Dp_PDA7(j))-log10(Dp_PDA7(j-1))))];
end
Dp_PDA7 = Dp_PDA7(1:end-1);

for i = 1:longueur8(1)
N_PDA8 = [N_PDA8;(1/60)*mean(PDA.Feuil8(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA8 = PDA.Feuil8(:,1);
dN_PDA8 = [];
for j = 2:longueur1(1)
    dN_PDA8 = [dN_PDA8;(N_PDA8(j-1)/(log10(Dp_PDA8(j))-log10(Dp_PDA8(j-1))))];
end
Dp_PDA8 = Dp_PDA8(1:end-1);

for i = 1:longueur9(1)
N_PDA9 = [N_PDA9;(1/60)*mean(PDA.Feuil9(i,(2:end)))*(1/S)*(1/Vmoy)*conv]; %Divise par 60 parce que la mesure est réalisée sur 60sec.
end
Dp_PDA9 = PDA.Feuil9(:,1);
dN_PDA9 = [];
for j = 2:longueur1(1)
        dN_PDA9 = [dN_PDA9;(N_PDA9(j-1)/(log10(Dp_PDA9(j))-log10(Dp_PDA9(j-1))))];
end
Dp_PDA9 = Dp_PDA9(1:end-1);

%% Cascade Impactor

%% Instruments Comparison with DEHS aerosols
figure (1)
semilogx (Dp_PDA(1:5),dN_PDA(1:5),'LineWidth',1,'LineStyle','--','Color','k')
hold on
shadedErrorBar(Dp_SMPS1,N_SMPS1,0.12*N_SMPS1,'lineProps','r','transparent',1);
hold on
shadedErrorBar(Dp_GRIMM,N_GRIMM1,0.10*N_GRIMM1,'lineProps','b','transparent',1);
hold on
shadedErrorBar(Dp_PDA(5:20),dN_PDA(5:20),0.07*dN_PDA(5:20),'lineProps','k','transparent',1);
hold off
legend("PDA","SMPS","GRIMM")
% title("Comparaison des instruments, Test 1, DEHS")
xlabel('Dp (micromètre)')
ylabel('Concentration (# particules par litre)')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',18)
grid on

%% Instruments comparison with water-based aerosols

figure(2)
shadedErrorBar(Dp_GRIMM(1:13),N_GRIMM4(1:13),0.10*N_GRIMM4(1:13),'lineProps','b','transparent',1);
hold on
shadedErrorBar(Dp_SMPS4,N_SMPS4,0.12*N_SMPS4,'lineProps','r','transparent',1);
hold on
shadedErrorBar(Dp_PDA4(1:42),dN_PDA4(1:42),0.07*dN_PDA4(1:42),'lineProps','k','transparent',1);
legend("GRIMM","SMPS","PDA")
% title("Comparaison des instruments, Test 1, Spray")
xlabel('Dp (micrometer)')
ylabel('Concentration (# particles per litre)')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',18)
set(gca, 'YScale', 'log')
set(gca, 'XScale', 'log')
grid on

%% Drying

% Diamètre des gouttelettes à la source
m_f1 = (M_GRIMM10*(1/1.2).*10^(-6)); %kg de sel pour chque bin
m_f2 = (M_GRIMM11*(1/1.2).*10^(-6));
m_f3 = (M_GRIMM12*(1/1.2).*10^(-6));
c_s = 0.1; %kg/L kg de sel par litre d'eau
D_s1 = ((c_s./m_f1)*0.00191).^(1/3);
D_s2 = ((c_s./m_f2)*0.00191).^(1/3);
D_s3 = ((c_s./m_f3)*0.00191).^(1/3);

figure (3)
semilogx(Dp_GRIMM(1:17),N_GRIMM7(1:17),'LineWidth',1)
hold on
semilogx(Dp_GRIMM(1:17),N_GRIMM8(1:17),'LineWidth',1)
hold on
semilogx(Dp_GRIMM(1:17),N_GRIMM9(1:17),'LineWidth',1)
hold off
xlabel('Dp (micromètre)')
ylabel('Concentration (# particules par litre)')
% title("Distribution de taille du GRIMM pour le KCl")
legend("Test 1","Test 2")
% New_XTickLabel = [0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2];
% set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',18)
grid on

figure (4)
semilogx(Dp_GRIMM(1:17),M_GRIMM10(1:17),'LineWidth',1)
hold on
semilogx(Dp_GRIMM(1:17),M_GRIMM11(1:17),'LineWidth',1)
hold on
semilogx(Dp_GRIMM(1:17),M_GRIMM12(1:17),'LineWidth',1)
hold off
xlabel('Dp (micromètre)')
ylabel('Concentration (# particules par litre)')
title("Distribution de masse du GRIMM pour le KCl")
legend("Test 1","Test 2")
% New_XTickLabel = [1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7];
% set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',18)
grid on


figure(5)
semilogx(D_s1(1:17),N_GRIMM7(1:17),'LineWidth',1)
hold on
semilogx (D_s2(1:17),N_GRIMM8(1:17),'LineWidth',1)
hold on
semilogx(D_s3(1:17),N_GRIMM9(1:17),'LineWidth',1)
hold off
xlabel('Dp (micromètre)')
ylabel('Concentration (# particules par litre)')
% title("Distribution de taille à la source du SMPS pour le DEHS")
legend("Test 1","Test 2")
New_XTickLabel = [1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7];
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',18)
grid on



