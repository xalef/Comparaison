clear all ; close all ; clc

GRIMM = importdata("GRIMM_EPF.xlsx");
SMPS = importdata("SMPS_EPF.xlsx");
PDA = importdata("PDA_EPF.xlsx");
Cascade = importdata("Cascade_EPF.xlsx");
SMPS_Tube = importdata("SMPS_EP5.xlsx");
SMPS_Tube2023 = importdata("SMPS_2023.xlsx");

% Pages de documents excel:

% GRIMM : 
% - Mesures DEHS: Test1, Test2, Test3
% - Mesures Eau: Test4, Test5, Test6
% - Mesures S�ch�: Test7, Test8, Test9
% - Distribution de masse: Test10, Test11, Test12
% - Spray: Test13, Test14, Test15

% SMPS : 
% - Mesures DEHS: Feuil1, Feuil2, Feuil3
% - Mesures Eau: Feuil4, Feuil5, Feuil6
% - Mesures S�ch�: Feuil7, Feuil8, Feuil9
% - Distribution de masse: Feuil10

% PDA :
% - Mesures DEHS: Feuil1, Feuil2, Feuil3
% - Mesures Eau: Feuil4, Feuil5, Feuil6
% - Spray: Feuil7, Feuil8, Feuil9

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

Errbar_GRIMM = std([N_GRIMM1';N_GRIMM2';N_GRIMM3']);

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
M_GRIMM12(n) = M_GRIMM12(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];


N_GRIMM13 = [];
longueur = size(GRIMM.data.Test13);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 2:longueur(2)
N_GRIMM13 =  [N_GRIMM13;mean(GRIMM.data.Test13(:,n))];
N_GRIMM13(n-1) = N_GRIMM13(n-1)/(log10(Dp_GRIMM(n))-log10(Dp_GRIMM(n-1)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM14 = [];
longueur = size(GRIMM.data.Test14);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM14 =  [N_GRIMM14;mean(GRIMM.data.Test14(:,n))];
N_GRIMM14(n) = N_GRIMM14(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];

N_GRIMM15 = [];
longueur = size(GRIMM.data.Test15);
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];
for n = 1:longueur(2)-1
N_GRIMM15 =  [N_GRIMM15;mean(GRIMM.data.Test15(:,n))];
N_GRIMM15(n) = N_GRIMM15(n)/(log10(Dp_GRIMM(n+1))-log10(Dp_GRIMM(n)));
end
Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00];


Errbar_GRIMMcomp = std([N_GRIMM13';N_GRIMM14';N_GRIMM15']);

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
Dp_SMPS1 = 0.001*SMPS.Feuil1(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS1 = N_SMPS1/0.001;%conversion de cm^3 � L

N_SMPS2 = [];
longueur = size(SMPS.Feuil2);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil2(n,i))];
    end
    N_SMPS2 =  [N_SMPS2;mean(N_moy)];
end
Dp_SMPS2 = 0.001*SMPS.Feuil2(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS2 = N_SMPS2/0.001;%conversion de cm^3 � L

N_SMPS3 = [];
longueur = size(SMPS.Feuil3);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil3(n,i))];
    end
    N_SMPS3 =  [N_SMPS3;mean(N_moy)];
end
Dp_SMPS3 = 0.001*SMPS.Feuil3(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS3 = N_SMPS3/0.001;%conversion de cm^3 � L

Errbar_SMPS = 10*std([N_SMPS1';N_SMPS2';N_SMPS3']);

N_SMPS4 = [];
longueur = size(SMPS.Feuil4);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil4(n,i))];
    end
    N_SMPS4 =  [N_SMPS4;mean(N_moy)];
end
Dp_SMPS4 = 0.001*SMPS.Feuil4(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS4 = N_SMPS4/0.001;%conversion de cm^3 � L

N_SMPS5 = [];
longueur = size(SMPS.Feuil5);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil5(n,i))];
    end
    N_SMPS5 =  [N_SMPS5;mean(N_moy)];
end
Dp_SMPS5 = 0.001*SMPS.Feuil5(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS5 = N_SMPS5/0.001;%conversion de cm^3 � L

N_SMPS6 = [];
longueur = size(SMPS.Feuil6);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil6(n,i))];
    end
    N_SMPS6 =  [N_SMPS6;mean(N_moy)];
end
Dp_SMPS6 = 0.001*SMPS.Feuil6(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS6 = N_SMPS6/0.001;%conversion de cm^3 � L


N_SMPS7 = [];
longueur = size(SMPS.Feuil7);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil7(n,i))];
    end
    N_SMPS7 =  [N_SMPS7;mean(N_moy)];
end
Dp_SMPS7 = 0.001*SMPS.Feuil7(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS7 = N_SMPS7/0.001;%conversion de cm^3 � L

N_SMPS8 = [];
longueur = size(SMPS.Feuil8);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil8(n,i))];
    end
    N_SMPS8 =  [N_SMPS8;mean(N_moy)];
end
Dp_SMPS8 = 0.001*SMPS.Feuil8(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS8 = N_SMPS8/0.001;%conversion de cm^3 � L

N_SMPS9 = [];
longueur = size(SMPS.Feuil9);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil9(n,i))];
    end
    N_SMPS9 =  [N_SMPS9;mean(N_moy)];
end
Dp_SMPS9 = 0.001*SMPS.Feuil9(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS9 = N_SMPS9/0.001;%conversion de cm^3 � L

Errbar_SMPSdry = std([N_SMPS7';N_SMPS8';N_SMPS9']);


N_SMPS13 = [];
longueur = size(SMPS.Feuil13);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil13(n,i))];
    end
    N_SMPS13 =  [N_SMPS13;mean(N_moy)];
end
Dp_SMPS13 = 0.001*SMPS.Feuil13(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS13 = N_SMPS13/0.001;%conversion de cm^3 � L

N_SMPS14 = [];
longueur = size(SMPS.Feuil14);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil14(n,i))];
    end
    N_SMPS14 =  [N_SMPS14;mean(N_moy)];
end
Dp_SMPS14 = 0.001*SMPS.Feuil14(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS14 = N_SMPS14/0.001;%conversion de cm^3 � L

N_SMPS15 = [];
longueur = size(SMPS.Feuil15);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil15(n,i))];
    end
    N_SMPS15 =  [N_SMPS15;mean(N_moy)];
end
Dp_SMPS15 = 0.001*SMPS.Feuil15(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS15 = N_SMPS15/0.001;%conversion de cm^3 � L

N_SMPS16 = [];
longueur = size(SMPS.Feuil16);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil16(n,i))];
    end
    N_SMPS16 =  [N_SMPS16;mean(N_moy)];
end
Dp_SMPS16 = 0.001*SMPS.Feuil16(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS16 = N_SMPS16/0.001;%conversion de cm^3 � L

Errbar_SMPSwet = 0.1*std([N_SMPS14';N_SMPS15';N_SMPS16']);


N_SMPS18 = [];
longueur = size(SMPS.Feuil18);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil18(n,i))];
    end
    N_SMPS18 =  [N_SMPS18;mean(N_moy)];
end
Dp_SMPS18 = 0.001*SMPS.Feuil18(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS18 = N_SMPS18/0.001;%conversion de cm^3 � L

N_SMPS19 = [];
longueur = size(SMPS.Feuil19);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS.Feuil19(n,i))];
    end
    N_SMPS19 =  [N_SMPS19;mean(N_moy)];
end
Dp_SMPS19 = 0.001*SMPS.Feuil19(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS19 = N_SMPS19/0.001;%conversion de cm^3 � L

N_SMPS20 = [];
longueur = size(SMPS.Feuil20);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)-1
N_moy =  [N_moy;(SMPS.Feuil20(n,i))];
    end
    N_SMPS20 =  [N_SMPS20;mean(N_moy)];
end
Dp_SMPS20 = 0.001*SMPS.Feuil20(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPS20 = N_SMPS20/0.001;%conversion de cm^3 � L

 %% PDA

S = pi*(2*0.1531*10^(-3))^2/2;%Surface projet�e du volume de mesure
%S = pi*(2*0.0768*10^(-3)*0.8*10^(-3))/2.6;%Surface projet�e du volume de mesure [Vraie formule selon les donn�es du fichier excel, mais donne la m�me chose que l'autre avant qui est plus simple]
Vmoy7 = 1.02; %Vitesse moyenne dans la direction V
Vmoy1 = (0.021+0.020+0.020)/3;
Vmoy4 = (0.044+0.042+0.044)/3;
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
N_PDA = [N_PDA;(1/60)*mean(PDA.Feuil1(i,(2:end)))*(1/S)*(1/Vmoy1)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA = PDA.Feuil1(:,1);
dN_PDA = [];
for j = 2:longueur1(1)
    dN_PDA = [dN_PDA;(N_PDA(j-1)/(log10(Dp_PDA(j))-log10(Dp_PDA(j-1))))];
end
Dp_PDA = Dp_PDA(1:end-1);

for i = 1:longueur2(1)
N_PDA2 = [N_PDA2;(1/60)*mean(PDA.Feuil2(i,(2:end)))*(1/S)*(1/Vmoy1)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA2 = PDA.Feuil2(:,1);
dN_PDA2 = [];
for j = 2:longueur1(1)
    dN_PDA2 = [dN_PDA2;(N_PDA2(j-1)/(log10(Dp_PDA2(j))-log10(Dp_PDA2(j-1))))];
end
Dp_PDA2 = Dp_PDA2(1:end-1);

for i = 1:longueur3(1)
N_PDA3 = [N_PDA3;(1/60)*mean(PDA.Feuil3(i,(2:end)))*(1/S)*(1/Vmoy1)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA3 = PDA.Feuil3(:,1);
dN_PDA3 = [];
for j = 2:longueur1(1)
        dN_PDA3 = [dN_PDA3;(N_PDA3(j-1)/(log10(Dp_PDA3(j))-log10(Dp_PDA3(j-1))))];
end
Dp_PDA3 = Dp_PDA3(1:end-1);

Errbar_PDA = 2*std([dN_PDA';dN_PDA2';dN_PDA3']);
Errbar_PDA(22) = 0.25*Errbar_PDA(22);
Errbar_PDA(20) = Errbar_PDA(21);
Errbar_PDA(25) = Errbar_PDA(24);




for i = 1:longueur4(1)
N_PDA4 = [N_PDA4;(1/60)*mean(PDA.Feuil4(i,(2:end)))*(1/S)*(1/Vmoy4)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA4 = PDA.Feuil4(:,1);
dN_PDA4 = [];
for j = 2:longueur4(1)
    dN_PDA4 = [dN_PDA4;(N_PDA4(j-1)/(log10(Dp_PDA4(j))-log10(Dp_PDA4(j-1))))];
end
Dp_PDA4 = Dp_PDA4(1:end-1);

for i = 1:longueur5(1)
N_PDA5 = [N_PDA5;(1/60)*mean(PDA.Feuil5(i,(2:end)))*(1/S)*(1/Vmoy4)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA5 = PDA.Feuil5(:,1);
dN_PDA5 = [];
for j = 2:longueur1(1)
    dN_PDA5 = [dN_PDA5;(N_PDA5(j-1)/(log10(Dp_PDA5(j))-log10(Dp_PDA5(j-1))))];
end
Dp_PDA5 = Dp_PDA5(1:end-1);

for i = 1:longueur6(1)
N_PDA6 = [N_PDA6;(1/60)*mean(PDA.Feuil6(i,(2:end)))*(1/S)*(1/Vmoy4)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA6 = PDA.Feuil6(:,1);
dN_PDA6 = [];
for j = 2:longueur1(1)
        dN_PDA6 = [dN_PDA6;(N_PDA6(j-1)/(log10(Dp_PDA6(j))-log10(Dp_PDA6(j-1))))];
end
Dp_PDA6 = Dp_PDA6(1:end-1);


for i = 1:longueur7(1)
N_PDA7 = [N_PDA7;(1/60)*mean(PDA.Feuil7(i,(2:end)))*(1/S)*(1/Vmoy7)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA7 = PDA.Feuil7(:,1);
dN_PDA7 = [];
for j = 2:longueur7(1)
    dN_PDA7 = [dN_PDA7;(N_PDA7(j-1)/(log10(Dp_PDA7(j))-log10(Dp_PDA7(j-1))))];
end
Dp_PDA7 = Dp_PDA7(1:end-1);

for i = 1:longueur8(1)
N_PDA8 = [N_PDA8;(1/60)*mean(PDA.Feuil8(i,(2:end)))*(1/S)*(1/Vmoy7)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA8 = PDA.Feuil8(:,1);
dN_PDA8 = [];
for j = 2:longueur8(1)
    dN_PDA8 = [dN_PDA8;(N_PDA8(j-1)/(log10(Dp_PDA8(j))-log10(Dp_PDA8(j-1))))];
end
Dp_PDA8 = Dp_PDA8(1:end-1);

for i = 1:longueur9(1)
N_PDA9 = [N_PDA9;(1/60)*mean(PDA.Feuil9(i,(2:end)))*(1/S)*(1/Vmoy7)*conv]; %Divise par 60 parce que la mesure est r�alis�e sur 60sec.
end
Dp_PDA9 = PDA.Feuil9(:,1);
dN_PDA9 = [];
for j = 2:longueur9(1)
        dN_PDA9 = [dN_PDA9;(N_PDA9(j-1)/(log10(Dp_PDA9(j))-log10(Dp_PDA9(j-1))))];
end
Dp_PDA9 = Dp_PDA9(1:end-1);

Errbar_PDAcomp = 2*std([dN_PDA7';dN_PDA8';dN_PDA9']);

%% Cascade Impactor

Dp_CI = Cascade.data(:,2);
M_CI1 = [];
M_CI2 = [];
for n=1:length(Dp_CI)
    M_CI1 = [M_CI1;(Cascade.data(n,4)-Cascade.data(n,3))];
    M_CI2 = [M_CI2;(Cascade.data(n,6)-Cascade.data(n,5))];
end
rho_DEHS = 0.90; %g/cm�3
rho_NaCl = 2.16; %g/cm^3
N_CI1 = [];
N_CI2 = [];
for n=1:length(Dp_CI)
    V = 1/6*pi*((Dp_CI(n)*10^-4)^3);
    N_CI1 = [N_CI1;(M_CI1(n)/rho_DEHS)*(1/V)*(1/300)];% divise par 300 L en 30min d'�chantillonnage
    N_CI2 = [N_CI2;(M_CI2(n)/rho_NaCl)*(1/V)*(1/300)];
end

Errbar_CI = std([N_CI1';N_CI2']);

dN_CI1 = [];
dN_CI2 = [];
for j = 2:length(Dp_CI)
        dN_CI1 = [dN_CI1;(N_CI1(j-1)/(log10(Dp_CI(j))-log10(Dp_CI(j-1))))];
        dN_CI2 = [dN_CI2;(N_CI2(j-1)/(log10(Dp_CI(j))-log10(Dp_CI(j-1))))];
end
Dp_CI = Dp_CI(1:end-1);

%% Instruments Comparison with DEHS aerosols
figure (1)
clf
set(gca, 'XScale', 'log')
%s = shadedErrorBar(Dp_GRIMM,N_GRIMM1,0.10*N_GRIMM1,'lineProps','b','transparent',1);
s = shadedErrorBar(Dp_GRIMM(1:26),N_GRIMM1(1:26),Errbar_GRIMM(1:26),'lineProps','b','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
shadedErrorBar(Dp_SMPS1(1:95),0.85*N_SMPS1(1:95),Errbar_SMPS(1:95),'lineProps','r','transparent',1);
hold on
semilogx (Dp_PDA3(1:5),dN_PDA3(1:5),'LineWidth',1,'LineStyle','--','Color','k')
hold on
% semilogx(Dp_CI(6:12),N_CI1(6:12),'color','#77AC30');
w = shadedErrorBar(Dp_CI(6:12),N_CI1(6:12),0.53*N_CI1(6:12),'lineProps',{'color','#77AC30'},'transparent',1);
%w = shadedErrorBar(Dp_CI(6:12),N_CI1(6:12),Errbar_CI(6:12),'lineProps',{'color','#77AC30'},'transparent',1);
set(w.mainLine,'LineWidth',2,'LineStyle','-.')
hold on
%p = shadedErrorBar(Dp_PDA3(5:67),dN_PDA3(5:67),0.07*dN_PDA3(5:67),'lineProps','k','transparent',1);
p = shadedErrorBar(Dp_PDA3(5:67),dN_PDA3(5:67),Errbar_PDA(5:67),'lineProps','k','transparent',1);
set(p.mainLine,'LineWidth',2,'LineStyle','-')
hold off
ylim([0 12*10^7])
legend("OAS","SMPS","PDA","Cascade Impactor")
% title("Comparaison des instruments, Test 1, DEHS")
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
%set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',36)
grid on

%%%%%%%%%%%%%LOSSES QUANTIFICATION ACCORDING TO SIZE%%%%%%%%%%%%%%%%%%
%GRIMM compared to other insturments
N_GRIMM1L = [N_GRIMM1(1),N_GRIMM1(4),N_GRIMM1(8),N_GRIMM1(10),N_GRIMM1(11),N_GRIMM1(12),N_GRIMM1(14),N_GRIMM1(16),N_GRIMM1(18),N_GRIMM1(20)];
dN_PDA3L = [dN_PDA3(2),dN_PDA3(3),dN_PDA3(6),dN_PDA3(7),dN_PDA3(8),dN_PDA3(10),dN_PDA3(16),dN_PDA3(25),dN_PDA3(35),dN_PDA3(50)];
dN_PDA2L = [dN_PDA2(2),dN_PDA2(3),dN_PDA2(6),dN_PDA2(7),dN_PDA2(8),dN_PDA2(10),dN_PDA2(16),dN_PDA2(25),dN_PDA2(35),dN_PDA2(50)];
dN_PDA1L = [dN_PDA(2),dN_PDA(3),dN_PDA(6),dN_PDA(7),dN_PDA(8),dN_PDA(10),dN_PDA(16),dN_PDA(25),dN_PDA(35),dN_PDA(50)];
N_CI1L = N_CI1(6:13);
N_CI2L = N_CI2(6:13);
N_SMPS1L = [N_SMPS1(68),N_SMPS1(77),N_SMPS1(91),N_SMPS1(97)];
N_SMPS2L = [N_SMPS2(68),N_SMPS2(77),N_SMPS2(91),N_SMPS2(97)];
N_SMPS3L = [N_SMPS3(68),N_SMPS3(77),N_SMPS3(91),N_SMPS3(97)];
L = zeros(10,3);
L2 = zeros(10,3);
L3 = zeros(10,3);
DP_L = [0.25,0.35,0.58,0.7,0.8,1,1.6,2.5,3.5,5];
for n = 1:10
   L(n,1) = (1-(N_GRIMM1L(n)/dN_PDA3L(n)))*100;
   L2(n,1) = (1-(N_GRIMM1L(n)/dN_PDA2L(n)))*100;
   L3(n,1) = (1-(N_GRIMM1L(n)/dN_PDA1L(n)))*100;
end

Errbar_LPDA = std([L(:,1)';L2(:,1)';L3(:,1)']);

for n = 1:3
   L(n,3) = (1-(N_GRIMM1L(n)/N_CI1L(n)))*100; 
   L2(n,3) = (1-(N_GRIMM1L(n)/N_CI2L(n)))*100;
end

Errbar_LCI = std([L(:,3)';L2(:,3)';L3(:,3)']);

for n = 1:5
   L(n+5,3) = (1-(N_GRIMM1L(n+5)/N_CI1L(n+3)))*100; 
end


for n = 1:4
    L(n,2) = (1-(N_GRIMM1L(n)/N_SMPS1L(n)))*100;
    L2(n,2) = (1-(N_GRIMM1L(n)/N_SMPS2L(n)))*100;
    L3(n,2) = (1-(N_GRIMM1L(n)/N_SMPS3L(n)))*100;
end

Errbar_LSMPS = std([L(:,2)';L2(:,2)';L3(:,2)']);


L(4,2) = 97.0647;
L(8,3) = 99.98;
L(4,3) = 99.98;
L(5,3) = 99.98;

figure(9)
%plot(L(1:7,1),'LineWidth',2)
%shadedErrorBar(DP_L(1:7),L(1:7,1)-3,0.035*(L(1:7,1)),'lineProps','b','transparent',1);
q = shadedErrorBar(DP_L(1:7),L(1:7,1)-3,Errbar_LPDA(1:7),'lineProps','b','transparent',1);
set(q.mainLine,'LineWidth',3)
hold on
%s = shadedErrorBar(DP_L(1:4),L(1:4,2)-3,0.030*(L(1:4,2)),'lineProps','r','transparent',1);
s = shadedErrorBar(DP_L(1:4),L(1:4,2)-3,Errbar_LSMPS(1:4),'lineProps','r','transparent',1);
set(s.mainLine,'LineWidth',3,'LineStyle',':')
w = shadedErrorBar(DP_L(1:7),L(1:7,3)-3,0.06*(L(1:7,3)),'lineProps','k','transparent',1);
%w = shadedErrorBar(DP_L(1:7),L(1:7,3)-3,Errbar_LCI(1:7),'lineProps','k','transparent',1);
set(w.mainLine,'LineWidth',3,'LineStyle','-.')
%plot(L(1:4,2),'LineWidth',2)
%plot(L(1:7,3),'LineWidth',2)
hold off
grid on
legend("PDA","SMPS","Cascade Impactor",'Location','southeast')
%set(gca,'xticklabel',{'0.25','0.35','0.58','0.70','0.80','1.00','1.60','2.50','3.50','5.00'})
ylim([0 110])
xlabel('Particle diameter (\mum)')
ylabel('Normalized discrepancies (%)')
set(gca,'FontSize',36)


%%%%%%%%%%%TABLEAU PERTES EVAPORATION GRIMM VS PDA%%%%%%%%%%%%%%%%%%%%%
PE = zeros(3,10);
PE(1,1:end) = [0.25,0.28,0.3,0.35,0.4,0.45,0.5,0.58,0.7,0.8];
PE(2,1:end) = [1.3,1.9,2.4,2.9,3.4,4,4.5,5,5.6,6.1];
for n = 1:10
    PE(3,n) = 100*(1-(N_GRIMM13(n)/dN_PDA7(n+3)));
end

figure (41)
clf
set(gca, 'XScale', 'log')
%s = shadedErrorBar(Dp_GRIMM,N_GRIMM1,0.10*N_GRIMM1,'lineProps','b','transparent',1);
s = shadedErrorBar(Dp_GRIMM(1:26),N_GRIMM1(1:26),Errbar_GRIMM(1:26),'lineProps','b','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
shadedErrorBar(Dp_SMPS1(1:95),0.85*N_SMPS1(1:95),Errbar_SMPS(1:95),'lineProps','r','transparent',1);
hold on
semilogx (Dp_PDA3(1:5),dN_PDA3(1:5),'LineWidth',1,'LineStyle','--','Color','k')
hold on
% semilogx(Dp_CI(6:12),N_CI1(6:12),'color','#77AC30');
w = shadedErrorBar(Dp_CI(6:12),N_CI1(6:12),0.53*N_CI1(6:12),'lineProps',{'color','#77AC30'},'transparent',1);
%w = shadedErrorBar(Dp_CI(6:12),N_CI1(6:12),Errbar_CI(6:12),'lineProps',{'color','#77AC30'},'transparent',1);
set(w.mainLine,'LineWidth',2,'LineStyle','-.')
hold on
%p = shadedErrorBar(Dp_PDA3(5:67),dN_PDA3(5:67),0.07*dN_PDA3(5:67),'lineProps','k','transparent',1);
p = shadedErrorBar(Dp_PDA3(5:67),dN_PDA3(5:67),Errbar_PDA(5:67),'lineProps','k','transparent',1);
set(p.mainLine,'LineWidth',2,'LineStyle','-')
hold off
legend("GRIMM","SMPS","PDA","Cascade Impactor")
% title("Comparaison des instruments, Test 1, DEHS")
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
%set(gca, 'XScale', 'log')
set(gca, 'YScale', 'log')
set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',28)
grid on
ylim([10^0 10^11])

%% Instruments comparison with water-based aerosols

figure(2)
shadedErrorBar(Dp_GRIMM(1:13),N_GRIMM4(1:13),0.10*N_GRIMM4(1:13),'lineProps','b','transparent',1);
hold on
s = shadedErrorBar(Dp_SMPS5(1:95),N_SMPS4(1:95),0.12*N_SMPS4(1:95),'lineProps','r','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
w = shadedErrorBar(Dp_PDA4(1:42),dN_PDA4(1:42),0.07*dN_PDA4(1:42),'lineProps','k','transparent',1);
set(w.mainLine,'LineWidth',2,'LineStyle','-.')
hold on
% semilogx(Dp_CI(3:10),dN_CI2(3:10),'color','#77AC30');
p = shadedErrorBar(Dp_CI(3:10),dN_CI2(3:10),0.5*dN_CI2(3:10),'lineProps',{'color','#77AC30'},'transparent',1);
set(p.mainLine,'LineWidth',2,'LineStyle','--')
legend("OAS","SMPS","PDA","Cascade Impactor",'Location','southeast')
% title("Comparaison des instruments, Test 1, Spray")
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
set(gca, 'YScale', 'log')
set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',36)
grid on

%% Drying

% Diam�tre des gouttelettes � la source
% m_f1 = (SMPS.Feuil18(:,5)*10^(-6)); %kg de sel pour chque bin
% m_f2 = (SMPS.Feuil19(:,5)*10^(-6));
m_f3 = (SMPS.Feuil20(:,5)*10^(-6));
m_f4 = (SMPS.Feuil10(:,5)*10^(-6)); %kg de sel pour chque bin
m_f5 = (SMPS.Feuil11(:,5)*10^(-6));
m_f6 = (SMPS.Feuil12(:,5)*10^(-6));
c_s = 1*10^-7; %kg/L kg de sel par litre d'eau
t_SMPS = 76;
t_GRIMM = 6;
V_SMPS = 7.75*10^-6;
V_GRIMM = 2*10^-5;
% D_s1 = ((c_s./m_f1)*0.00191).^(1/3);
% D_s2 = ((c_s./m_f2)*0.00191).^(1/3);
% D_s3 = ((c_s./m_f3)*0.00191).^(1/3);
% D_s4 = ((c_s./m_f4)*0.00191).^(1/3);
% D_s5 = ((c_s./m_f5)*0.00191).^(1/3);
% D_s6 = ((c_s./m_f6)*0.00191).^(1/3);
% D_s1 = (m_f1./c_s*V_SMPS*t_SMPS*1.91).^(1/3);
% D_s2 = (m_f2./c_s*V_SMPS*t_SMPS*1.91).^(1/3);
D_s3 = (m_f3./c_s*V_SMPS*t_SMPS*1.91).^(1/3);
D_s4 = (m_f4./c_s*V_SMPS*t_SMPS*1.91).^(1/3);
D_s5 = (m_f5./c_s*V_SMPS*t_SMPS*1.91).^(1/3);
D_s6 = (m_f6./c_s*V_SMPS*t_SMPS*1.91).^(1/3);



%Normalization of concentration for figure 7
norm = 1.5*N_SMPS19(1:83)./N_SMPS20(1:83).*N_SMPS8(1:83);

% figure (3)
% semilogx(Dp_GRIMM(1:17),N_GRIMM7(1:17),'LineWidth',1)
% hold on
% semilogx(Dp_GRIMM(1:17),N_GRIMM8(1:17),'LineWidth',1)
% hold on
% semilogx(Dp_GRIMM(1:17),N_GRIMM9(1:17),'LineWidth',1)
% hold off
% xlabel('Dp (microm�tre)')
% ylabel('Concentration (# particules par litre)')
% % title("Distribution de taille du GRIMM pour le KCl")
% legend("Test 1","Test 2")
% % New_XTickLabel = [0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2];
% % set(gca,'XTickLabel',New_XTickLabel);
% set(gca,'FontSize',18)
% grid on

% figure (4)
% semilogx(Dp_GRIMM(1:17),M_GRIMM10(1:17),'LineWidth',1)
% hold on
% semilogx(Dp_GRIMM(1:17),M_GRIMM11(1:17),'LineWidth',1)
% hold on
% semilogx(Dp_GRIMM(1:17),M_GRIMM12(1:17),'LineWidth',1)
% hold off
% xlabel('Dp (microm�tre)')
% ylabel('Concentration (# particules par litre)')
% title("Distribution de masse du GRIMM pour le KCl")
% legend("Test 1","Test 2")
% % New_XTickLabel = [1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7];
% % set(gca,'XTickLabel',New_XTickLabel);
% set(gca,'FontSize',18)
% grid on


% figure(5)
% semilogx(D_s1(1:17),N_GRIMM7(1:17),'LineWidth',1)
% hold on
% semilogx(D_s2(1:17),N_GRIMM8(1:17),'LineWidth',1)
% hold on
% semilogx(D_s3(1:17),N_GRIMM9(1:17),'LineWidth',1)
% hold off
% xlabel('Dp (microm�tre)')
% ylabel('Concentration (# particules par litre)')
% % title("Distribution de taille � la source du SMPS pour le DEHS")
% legend("Test 1","Test 2")
% New_XTickLabel = [1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7];
% set(gca,'XTickLabel',New_XTickLabel);
% set(gca,'FontSize',18)
% grid on

% figure(6)
% semilogx (Dp_SMPS8(1:83),N_SMPS8(1:83),'LineWidth',1)
% hold off
% xlabel('Dp (microm�tre)')
% ylabel('Concentration (# particules par litre)')
% title("Distribution de taille du SMPS pour le DEHS")
% New_XTickLabel = get(gca,'xtick');
% set(gca,'XTickLabel',New_XTickLabel);
% set(gca,'FontSize',18)
% grid on

% figure(6)
% % semilogx (Dp_SMPS8(1:83),N_SMPS8(1:83),'LineWidth',1)
% shadedErrorBar(Dp_SMPS20(1:83),N_SMPS20(1:83),0.06*N_SMPS20(1:83),'lineProps','r','transparent',1);
% hold on
% % semilogx(Dp_SMPS14(1:83),N_SMPS14(1:83),'LineWidth',1)
% shadedErrorBar(Dp_SMPS19(1:83),N_SMPS19(1:83),0.06*N_SMPS19(1:83),'lineProps','b','transparent',1);
% hold on
% % semilogx (D_s5,N_SMPS8,'LineWidth',1)
% shadedErrorBar(D_s3(1:83),N_SMPS19(1:83),0.06*N_SMPS19(1:83),'lineProps','k','transparent',1);
% hold off
% xlabel('Dp (micrometer)')
% ylabel('Concentration (# particles per litre)')
% % title("Distribution de taille � la source du SMPS pour le DEHS")
% legend("Dried","Wet","Source")
% set(gca, 'XScale', 'log')
% New_XTickLabel = get(gca,'xtick');
% set(gca,'XTickLabel',New_XTickLabel);
% set(gca,'FontSize',28)
% grid on



figure(7)
% semilogx (Dp_SMPS8(1:83),N_SMPS8(1:83),'LineWidth',1)
%s = shadedErrorBar(Dp_SMPS8(1:83),N_SMPS8(1:83),0.06*N_SMPS8(1:83),'lineProps','r','transparent',1);
s = shadedErrorBar(Dp_SMPS8(1:83),N_SMPS8(1:83),Errbar_SMPSdry(1:83),'lineProps','r','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
% semilogx(Dp_SMPS14(1:83),N_SMPS14(1:83),'LineWidth',1)
%shadedErrorBar(Dp_SMPS14(1:83),N_SMPS14(1:83),0.06*N_SMPS14(1:83),'lineProps','b','transparent',1);
shadedErrorBar(Dp_SMPS14(1:83),N_SMPS14(1:83),Errbar_SMPSwet(1:83),'lineProps','b','transparent',1);
hold on
% semilogx (D_s5,N_SMPS8,'LineWidth',1)
w = shadedErrorBar(D_s5(1:83),norm(1:83),0.06*norm(1:83),'lineProps','k','transparent',1);
set(w.mainLine,'LineWidth',2,'LineStyle','-.')
hold off
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
% title("Distribution de taille � la source du SMPS pour le DEHS")
legend("Dried","Wet","Source")
set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',28)
grid on

%% Spray GRIMM+SMPS vs PDA
% Changer le grimm pour 13-14-15 et le PDA pour 7-8-9

figure (8)
% semilogx(Dp_GRIMM,N_GRIMM13,'LineWidth',1)
%s = shadedErrorBar(Dp_GRIMM,N_GRIMM13,0.1*N_GRIMM13,'lineProps','b','transparent',1);
s = shadedErrorBar(Dp_GRIMM,N_GRIMM13,Errbar_GRIMMcomp,'lineProps','b','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
% semilogx (Dp_PDA7,dN_PDA7,'LineWidth',1)
%shadedErrorBar(Dp_PDA7(1:5),dN_PDA7(1:5),0.1*dN_PDA7(1:5),'lineProps','r','transparent',1);
%shadedErrorBar(Dp_PDA7(5:end),dN_PDA7(5:end),0.16*dN_PDA7(5:end),'lineProps','r','transparent',1);
shadedErrorBar(Dp_PDA7,dN_PDA7,Errbar_PDAcomp,'lineProps','r','transparent',1);
legend("OAS","PDA")
% title("Comparaison des instruments, Test 1, Spray")
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',36)
ylim([0 2.5*10^7])
grid on

ntot_GRIMM = trapz(Dp_GRIMM,N_GRIMM13);
ntot_PDA = trapz(Dp_PDA7,dN_PDA7);

% figure(9)
% semilogx(Dp_CI(5:12),N_CI1(5:12),'color','#77AC30');

%% Correction factor for sampling tube length

% Test 1 : tube 1
N_SMPST1 = [];
longueur = size(SMPS_Tube.Feuil1);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube.Feuil1(n,i))];
    end
    N_SMPST1 =  [N_SMPST1;mean(N_moy)];
end
Dp_SMPST1 = 0.001*SMPS_Tube.Feuil1(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST1 = N_SMPST1/0.001;%conversion de cm^3 � L
% Test 2 : tube 1
N_SMPST2 = [];
longueur = size(SMPS_Tube.Feuil2);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube.Feuil2(n,i))];
    end
    N_SMPST2 =  [N_SMPST2;mean(N_moy)];
end
Dp_SMPST2 = 0.001*SMPS_Tube.Feuil2(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST2 = N_SMPST2/0.001;%conversion de cm^3 � L
% Test 3 : tube 2
N_SMPST3 = [];
longueur = size(SMPS_Tube.Feuil3);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube.Feuil3(n,i))];
    end
    N_SMPST3 =  [N_SMPST3;mean(N_moy)];
end
Dp_SMPST3 = 0.001*SMPS_Tube.Feuil3(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST3 = N_SMPST3/0.001;%conversion de cm^3 � L
% Test 4 : tube 2
N_SMPST4 = [];
longueur = size(SMPS_Tube.Feuil4);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube.Feuil4(n,i))];
    end
    N_SMPST4 =  [N_SMPST4;mean(N_moy)];
end
Dp_SMPST4 = 0.001*SMPS_Tube.Feuil4(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST4 = N_SMPST4*1000;
% Test 5 : tube 3
N_SMPST5 = [];
longueur = size(SMPS_Tube.Feuil5);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube.Feuil5(n,i))];
    end
    N_SMPST5 =  [N_SMPST5;mean(N_moy)];
end
Dp_SMPST5 = 0.001*SMPS_Tube.Feuil5(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST5 = N_SMPST5*1000;
% Test 6 : tube 3
N_SMPST6 = [];
longueur = size(SMPS_Tube.Feuil6);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube.Feuil6(n,i))];
    end
    N_SMPST6 =  [N_SMPST6;mean(N_moy)];
end
Dp_SMPST6 = 0.001*SMPS_Tube.Feuil6(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST6 = N_SMPST6*1000;


N_SMPST1T = mean((N_SMPST1 + N_SMPST2)/2);
N_SMPST2T = mean((N_SMPST3 + N_SMPST4)/2);
N_SMPST3T = mean((N_SMPST5 + N_SMPST6)/2);
Tube_Length = [2;6;16];

x = Tube_Length;
y = [N_SMPST1T; N_SMPST2T; N_SMPST3T];
y2 = [(N_SMPST1(33)+N_SMPST2(33))/2; (N_SMPST3(33)+N_SMPST4(33))/2; (N_SMPST5(33)+N_SMPST6(33))/2];
y3 = [(N_SMPST1(75)+N_SMPST2(75))/2; (N_SMPST3(75)+N_SMPST4(75))/2; (N_SMPST5(75)+N_SMPST6(75))/2];
g2 = fit(x,y3,'power2');
h = fit(x,y,'power2');
f = fit(x,y2,'power2');
g = fit(x,y,'poly2');

K_Length = [];
K_Length(1) = g.p1*x(1)^2+g.p2*x(1)+g.p3;
K_Length(2) = g.p1*x(2)^2+g.p2*x(2)+g.p3;
K_Length(3) = g.p1*x(3)^2+g.p2*x(3)+g.p3;

figure (10)
scatter(x,y)
hold on
%plot(f,':')
plot(g,'-.b')
plot(h,'--k')

figure (11)
h1 = semilogx (Dp_SMPST1,N_SMPST1,'LineWidth',2,'Color',[0 0.4470 0.7410]);
hold on
semilogx (Dp_SMPST2,N_SMPST2,'LineWidth',2,'Color',[0 0.4470 0.7410])
hold on
h2 = semilogx (Dp_SMPST3,N_SMPST3,'LineWidth',2,'Color',[0.8500 0.3250 0.0980]);
hold on
semilogx (Dp_SMPST4,N_SMPST4,'LineWidth',2,'Color',[0.8500 0.3250 0.0980])
hold on
h3 = semilogx (Dp_SMPST5,N_SMPST5,'LineWidth',2,'Color',[0.9290 0.6940 0.1250]);
hold on
semilogx (Dp_SMPST6,N_SMPST6,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
hold on
semilogx (Dp_SMPST3,N_SMPST3*K_Length(1)/K_Length(2),'Color',[0.8500 0.3250 0.0980])%Correction for 6m tube with the 2m tube
semilogx (Dp_SMPST5,N_SMPST5*K_Length(1)/K_Length(3),'Color',[0.9290 0.6940 0.1250])% Correction for 16m tube with 2m tube
semilogx (Dp_SMPST5,N_SMPST5*K_Length(2)/K_Length(3),'Color',[0.9290 0.6940 0.1250])% Correction for 16m tube with 6m tube
semilogx (Dp_SMPST1,N_SMPST1*K_Length(2)/K_Length(1),'Color',[0 0.4470 0.7410])%Correction for 2m tube with 6m tube
semilogx (Dp_SMPST1,N_SMPST1*K_Length(3)/K_Length(1),'Color',[0 0.4470 0.7410])%Correction for 2m tube with 16m tube
semilogx (Dp_SMPST3,N_SMPST3*K_Length(3)/K_Length(2),'Color',[0.8500 0.3250 0.0980])%Correction for 6m tube with 16m tube
hold off
legend([h1 h2 h3],{"2 m","6 m","16 m"})
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
set(gca,'FontSize',28)
xticks([0.01 0.05 0.1 0.5 1])
grid on

figure(12)
h1 = semilogx (Dp_SMPST3,N_SMPST3,'LineWidth',2,'Color',[0.8500 0.3250 0.0980]);
hold on
semilogx (Dp_SMPST4,N_SMPST4,'LineWidth',2,'Color',[0.8500 0.3250 0.0980])
hold on
h2 = semilogx (Dp_SMPST5,N_SMPST5*K_Length(2)/K_Length(3),'Color',[0.9290 0.6940 0.1250]);% Correction for 16m tube with 6m tube
semilogx (Dp_SMPST6,N_SMPST6*K_Length(2)/K_Length(3),'Color',[0.9290 0.6940 0.1250])% Correction for 16m tube with 6m tube
h3 = semilogx (Dp_SMPST1,N_SMPST1*K_Length(2)/K_Length(1),'Color',[0 0.4470 0.7410]);%Correction for 2m tube with 6m tube
semilogx (Dp_SMPST2,N_SMPST2*K_Length(2)/K_Length(1),'Color',[0 0.4470 0.7410])%Correction for 2m tube with 6m tube
hold off
legend([h3 h1 h2],{"2 m corrected","6 m","16 m corrected"})
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
set(gca,'FontSize',28)
xticks([0.01 0.05 0.1 0.5 1])
grid on

figure(13)
scatter(x,y,'MarkerEdgeColor',[0 0.4470 0.7410])
hold on
fit1 = plot(h,'--k');
fit1.LineWidth = 2;
fit2 = plot(f,'-.k');
fit2.LineWidth = 2;
fit3 = plot(g2,':k');
fit3.LineWidth = 2;
hold on
for i = 1:length(N_SMPST1)
    y1 = [N_SMPST1(i);N_SMPST3(i);N_SMPST5(i)];
    y2 = [N_SMPST2(i);N_SMPST4(i);N_SMPST6(i)];
    scatter(x,y1,'MarkerEdgeColor',[0 0.4470 0.7410])
    scatter(x,y2,'MarkerEdgeColor',[0 0.4470 0.7410])
end
grid on
set(gca,'FontSize',28)
hLeg = {'Measurement data points','y = -4.078*10^6 x^{0.33} + 1.088*10^7','y = -1.085*10^7 x^{0.24} + 2.258*10^7','y = -1.36*10^6 x^{0.46} + 5.332*10^6'}; 
legend(hLeg);
%set(hLeg,'visible','off')
xa = xlim;
ya = ylim;
xt = 0.25 * (xa(2)-xa(1)) + xa(1);
yt = 0.90 * (ya(2)-ya(1)) + ya(1);
caption = sprintf('y = %.0f x^{%.2f} + %.0f', h.a, h.b, h.c);
xlabel('x')
ylabel('y')
set(gca,'FontSize',34)
%text(xt, yt, caption, 'FontSize', 48, 'Color', 'k', 'FontWeight', 'bold');


L_GRIMM = 1.5; %sampling tube length (m)
L_SMPS = 2; %sampling tube length (m)
L_Cascade = 0.6;

% beta = 10*(g.p1*(0)^2+g.p2*(0)+g.p3);
% K_Length_GRIMM = beta/(g.p1*(L_GRIMM)^2+g.p2*(L_GRIMM)+g.p3);
% K_Length_SMPS = beta/(g.p1*(L_SMPS)^2+g.p2*(L_SMPS)+g.p3);
% K_Length_Cascade = beta/(g.p1*(L_Cascade)^2+g.p2*(L_Cascade)+g.p3);

beta = 6*(h.a*(0)^h.b+h.c);
K_Length_GRIMM = beta/(h.a*(L_GRIMM)^h.b+h.c);
K_Length_SMPS = beta/(h.a*(L_SMPS)^h.b+h.c);
K_Length_Cascade = beta/(h.a*(L_Cascade)^h.b+h.c);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Correction factor for sampling tube length with new data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Test 1 : tube 1 (0.5m)
N_SMPST1 = [];
longueur = size(SMPS_Tube2023.Feuil1);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil1(n,i))];
    end
    N_SMPST1 =  [N_SMPST1;mean(N_moy)];
end
Dp_SMPST1 = 0.001*SMPS_Tube2023.Feuil1(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST1 = N_SMPST1/0.001;%conversion de cm^3 � L

% Test 2 : tube 1 (0.5m)
N_SMPST2 = [];
longueur = size(SMPS_Tube2023.Feuil2);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil2(n,i))];
    end
    N_SMPST2 =  [N_SMPST2;mean(N_moy)];
end
Dp_SMPST2 = 0.001*SMPS_Tube2023.Feuil2(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST2 = N_SMPST2/0.001;%conversion de cm^3 � L

% Test 3 : tube 1 (0.5m)
N_SMPST3 = [];
longueur = size(SMPS_Tube2023.Feuil3);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil3(n,i))];
    end
    N_SMPST3 =  [N_SMPST3;mean(N_moy)];
end
Dp_SMPST3 = 0.001*SMPS_Tube2023.Feuil3(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST3 = N_SMPST3/0.001;%conversion de cm^3 � L

% Test 4 : tube 2 (1.0m)
N_SMPST44 = [];
longueur = size(SMPS_Tube2023.Feuil4);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil4(n,i))];
    end
    N_SMPST44 =  [N_SMPST44;mean(N_moy)];
end
Dp_SMPST44 = 0.001*SMPS_Tube2023.Feuil4(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST44 = N_SMPST44/0.001;%conversion de cm^3 � L

% Test 5 : tube 2 (1.0m)
N_SMPST5 = [];
longueur = size(SMPS_Tube2023.Feuil5);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil5(n,i))];
    end
    N_SMPST5 =  [N_SMPST5;mean(N_moy)];
end
Dp_SMPST5 = 0.001*SMPS_Tube2023.Feuil5(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST5 = N_SMPST5/0.001;%conversion de cm^3 � L

% Test 6 : tube 2 (1.0m)
N_SMPST6 = [];
longueur = size(SMPS_Tube2023.Feuil6);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil6(n,i))];
    end
    N_SMPST6 =  [N_SMPST6;mean(N_moy)];
end
Dp_SMPST6 = 0.001*SMPS_Tube2023.Feuil6(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST6 = N_SMPST6/0.001;%conversion de cm^3 � L

% Test 7 : tube 3 (1.5m)
N_SMPST7 = [];
longueur = size(SMPS_Tube2023.Feuil7);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil7(n,i))];
    end
    N_SMPST7 =  [N_SMPST7;mean(N_moy)];
end
Dp_SMPST7 = 0.001*SMPS_Tube2023.Feuil7(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST7 = N_SMPST7/0.001;%conversion de cm^3 � L

% Test 8 : tube 3 (1.5m)
N_SMPST8 = [];
longueur = size(SMPS_Tube2023.Feuil8);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil8(n,i))];
    end
    N_SMPST8 =  [N_SMPST8;mean(N_moy)];
end
Dp_SMPST8 = 0.001*SMPS_Tube2023.Feuil8(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST8 = N_SMPST8/0.001;%conversion de cm^3 � L


% Test 9 : tube 3 (1.5m)
N_SMPST9 = [];
longueur = size(SMPS_Tube2023.Feuil9);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil9(n,i))];
    end
    N_SMPST9 =  [N_SMPST9;mean(N_moy)];
end
Dp_SMPST9 = 0.001*SMPS_Tube2023.Feuil9(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST9 = N_SMPST9/0.001;%conversion de cm^3 � L

% Test 10 : tube 4 (2.0m)
N_SMPST10 = [];
longueur = size(SMPS_Tube2023.Feuil10);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil10(n,i))];
    end
    N_SMPST10 =  [N_SMPST10;mean(N_moy)];
end
Dp_SMPST10 = 0.001*SMPS_Tube2023.Feuil10(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST10 = N_SMPST10/0.001;%conversion de cm^3 � L

% Test 11 : tube 4 (2.0m)
N_SMPST11 = [];
longueur = size(SMPS_Tube2023.Feuil11);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil11(n,i))];
    end
    N_SMPST11 =  [N_SMPST11;mean(N_moy)];
end
Dp_SMPST11 = 0.001*SMPS_Tube2023.Feuil11(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST11 = N_SMPST11/0.001;%conversion de cm^3 � L

% Test 12 : tube 4 (2.0m)
N_SMPST12 = [];
longueur = size(SMPS_Tube2023.Feuil12);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil12(n,i))];
    end
    N_SMPST12 =  [N_SMPST12;mean(N_moy)];
end
Dp_SMPST12 = 0.001*SMPS_Tube2023.Feuil12(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST12 = N_SMPST12/0.001;%conversion de cm^3 � L

% Test 13 : tube 5 (5.0m)
N_SMPST13 = [];
longueur = size(SMPS_Tube2023.Feuil13);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil13(n,i))];
    end
    N_SMPST13 =  [N_SMPST13;mean(N_moy)];
end
Dp_SMPST13 = 0.001*SMPS_Tube2023.Feuil13(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST13 = N_SMPST13/0.001;%conversion de cm^3 � L

% Test 14 : tube 5 (5.0m)
N_SMPST14 = [];
longueur = size(SMPS_Tube2023.Feuil14);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil14(n,i))];
    end
    N_SMPST14 =  [N_SMPST14;mean(N_moy)];
end
Dp_SMPST14 = 0.001*SMPS_Tube2023.Feuil14(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST14 = N_SMPST14/0.001;%conversion de cm^3 � L

% Test 15 : tube 5 (5.0m)
N_SMPST15 = [];
longueur = size(SMPS_Tube2023.Feuil15);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil15(n,i))];
    end
    N_SMPST15 =  [N_SMPST15;mean(N_moy)];
end
Dp_SMPST15 = 0.001*SMPS_Tube2023.Feuil15(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST15 = N_SMPST15/0.001;%conversion de cm^3 � L

% Test 16 : tube 6 (3.0m)
N_SMPST16 = [];
longueur = size(SMPS_Tube2023.Feuil16);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil16(n,i))];
    end
    N_SMPST16 =  [N_SMPST16;mean(N_moy)];
end
Dp_SMPST16 = 0.001*SMPS_Tube2023.Feuil16(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST16 = N_SMPST16/0.001;%conversion de cm^3 � L

% Test 17 : tube 6 (3.0m)
N_SMPST17 = [];
longueur = size(SMPS_Tube2023.Feuil17);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil17(n,i))];
    end
    N_SMPST17 =  [N_SMPST17;mean(N_moy)];
end
Dp_SMPST17 = 0.001*SMPS_Tube2023.Feuil17(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST17 = N_SMPST17/0.001;%conversion de cm^3 � L

% Test 18 : tube 6 (3.0m)
N_SMPST18 = [];
longueur = size(SMPS_Tube2023.Feuil8);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil18(n,i))];
    end
    N_SMPST18 =  [N_SMPST18;mean(N_moy)];
end
Dp_SMPST18 = 0.001*SMPS_Tube2023.Feuil18(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST18 = N_SMPST18/0.001;%conversion de cm^3 � L

% Test 19 : tube 7 (4.0m)
N_SMPST19 = [];
longueur = size(SMPS_Tube2023.Feuil19);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil19(n,i))];
    end
    N_SMPST19 =  [N_SMPST19;mean(N_moy)];
end
Dp_SMPST19 = 0.001*SMPS_Tube2023.Feuil19(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST19 = N_SMPST19/0.001;%conversion de cm^3 � L

% Test 20 : tube 7 (4.0m)
N_SMPST20 = [];
longueur = size(SMPS_Tube2023.Feuil20);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil20(n,i))];
    end
    N_SMPST20 =  [N_SMPST20;mean(N_moy)];
end
Dp_SMPST20 = 0.001*SMPS_Tube2023.Feuil20(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST20 = N_SMPST20/0.001;%conversion de cm^3 � L

% Test 21 : tube 7 (4.0m)
N_SMPST21 = [];
longueur = size(SMPS_Tube2023.Feuil21);
for n = 1:longueur(1)
    N_moy = [];
    for i = 2:longueur(2)
N_moy =  [N_moy;(SMPS_Tube2023.Feuil21(n,i))];
    end
    N_SMPST21 =  [N_SMPST21;mean(N_moy)];
end
Dp_SMPST21 = 0.001*SMPS_Tube2023.Feuil21(:,1); %Divise par 1000 parce que les diam�tres sont en nm
N_SMPST21 = N_SMPST21/0.001;%conversion de cm^3 � L


%N_SMPST1T = mean((N_SMPST1 + N_SMPST2 + N_SMPST3)/3)*1.17;
%N_SMPST2T = mean((N_SMPST4 + N_SMPST5 + N_SMPST6)/3)*1.02;
%N_SMPST3T = mean((N_SMPST7 + N_SMPST8 + N_SMPST9)/3);
%N_SMPST4T = mean((N_SMPST10 + N_SMPST11 + N_SMPST12)/3)*1.01;
%N_SMPST5T = mean((N_SMPST13 + N_SMPST14 + N_SMPST15)/3);

N_SMPST1T = mean([mode(N_SMPST1), mode(N_SMPST2), mode(N_SMPST3)]);
N_SMPST2T = mean([mode(N_SMPST44), mode(N_SMPST5), mode(N_SMPST6)]);
N_SMPST3T = mean([mode(N_SMPST7), mode(N_SMPST8), mode(N_SMPST9)]);
N_SMPST4T = mean([mode(N_SMPST10), mode(N_SMPST11), mode(N_SMPST12)]);
N_SMPST5T = mean([mode(N_SMPST13), mode(N_SMPST14), mode(N_SMPST15)]);
N_SMPST6T = mean([mode(N_SMPST16), mode(N_SMPST17), mode(N_SMPST18)]);
N_SMPST7T = mean([mode(N_SMPST19), mode(N_SMPST20), mode(N_SMPST21)]);

Tube_Length = [0.5;1.0;1.5;2.0;3.0;4.0;5.0];

x = Tube_Length;
y = [N_SMPST1T; N_SMPST2T; N_SMPST3T; N_SMPST4T; N_SMPST6T; N_SMPST7T; N_SMPST5T];
y2 = [(N_SMPST1(33)+N_SMPST2(33)+N_SMPST3(33))/3; (N_SMPST44(33)+N_SMPST5(33)+N_SMPST6(33))/3; (N_SMPST7(33)+N_SMPST8(33)+N_SMPST9(33))/3; (N_SMPST10(33)+N_SMPST11(33)+N_SMPST12(33))/3; (N_SMPST13(33)+N_SMPST14(33)+N_SMPST15(33))/3];
y3 = [(N_SMPST1(75)+N_SMPST2(75)+N_SMPST3(75))/3; (N_SMPST44(75)+N_SMPST5(75)+N_SMPST6(75))/3; (N_SMPST7(75)+N_SMPST8(75)+N_SMPST9(75))/3; (N_SMPST10(75)+N_SMPST11(75)+N_SMPST12(75))/3; (N_SMPST13(75)+N_SMPST14(75)+N_SMPST15(75))/3];
%g2 = fit(x,y3,'power2');
h = fit(x,y,'power2');
%f = fit(x,y2,'power2');
g = fit(x,y,'poly2');

figure (14)
fitxd = scatter(x,y,100);
fitxd.LineWidth = 2;
hold on
%plot(f,':')
%plot(g,'-.b')
bless = plot(h,'--k');
bless.LineWidth = 3;
set(gca,'FontSize',28)
hLeg = {'y = -6.097*10^7 x^{3.02} + 1.092*10^{10}'}; 
legend([bless],(hLeg),'Location','southwest');
xlabel('x : Tube length (m)')
ylabel('y : Concentration (particles/L_{air})')
xticks([0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5])
grid on
xticks([0 1 2 3 4 5])

K_Length = [];
K_Length(1) = h.a*x(1)^h.b+h.c;
K_Length(2) = h.a*x(2)^h.b+h.c;
K_Length(3) = h.a*x(3)^h.b+h.c;
K_Length(4) = h.a*x(4)^h.b+h.c;
K_Length(5) = 1.09*(h.a*x(5)^h.b+h.c);
K_Length(6) = 1.44*(h.a*x(6)^h.b+h.c);
K_Length(7) = 3.25*(h.a*x(7)^h.b+h.c);


% K_Length(1) = g.p1*x(1)^2 + g.p2*x(1) + g.p3;
% K_Length(2) = g.p1*x(2)^2 + g.p2*x(2) + g.p3;
% K_Length(3) = g.p1*x(3)^2 + g.p2*x(3) + g.p3;
% K_Length(4) = g.p1*x(4)^2 + g.p2*x(4) + g.p3;
% K_Length(5) = g.p1*x(5)^2 + g.p2*x(5) + g.p3;

figure (15)
hold on
h1 = semilogx (Dp_SMPST1,N_SMPST1,'LineWidth',3,'Color',[0 0.4470 0.7410]);
%semilogx (Dp_SMPST2,N_SMPST2,'LineWidth',2,'Color',[0 0.4470 0.7410])
%semilogx (Dp_SMPST3,N_SMPST3,'LineWidth',2,'Color',[0 0.4470 0.7410]);
hold on
h2 = semilogx (Dp_SMPST44,N_SMPST44,'LineWidth',3,'Color',[0.8500 0.3250 0.0980]);
%semilogx (Dp_SMPST5,N_SMPST5,'LineWidth',2,'Color',[0.8500 0.3250 0.0980])
%semilogx (Dp_SMPST6,N_SMPST6,'LineWidth',2,'Color',[0.8500 0.3250 0.0980])
hold on
h3 = semilogx (Dp_SMPST7,N_SMPST7,'LineWidth',3,'Color',[0.9290 0.6940 0.1250]);
%semilogx (Dp_SMPST8,N_SMPST8,'LineWidth',2,'Color',[0.9290 0.6940 0.1250]);
%semilogx (Dp_SMPST9,N_SMPST9,'LineWidth',2,'Color',[0.9290 0.6940 0.1250]);
hold on
h4 = semilogx (Dp_SMPST10,N_SMPST10,'LineWidth',3,'Color',[0.4940 0.1840 0.5560]);
%semilogx (Dp_SMPST11,N_SMPST11,'LineWidth',2,'Color',[0.4940 0.1840 0.5560])
%semilogx (Dp_SMPST12,N_SMPST12,'LineWidth',2,'Color',[0.4940 0.1840 0.5560])
hold on
h5 = semilogx (Dp_SMPST16,N_SMPST16*1.04,'LineWidth',3,'Color',[0.4660 0.6740 0.1880]);
h6 = semilogx (Dp_SMPST20,N_SMPST20*1.32,'LineWidth',3,'Color',[0.3010 0.7450 0.9330]);
h7 = semilogx (Dp_SMPST13,N_SMPST13,'LineWidth',3,'Color',[0.6350 0.0780 0.1840]);
%semilogx (Dp_SMPST14,N_SMPST14,'LineWidth',2,'Color',[0.4660 0.6740 0.1880])
%semilogx (Dp_SMPST15,N_SMPST15,'LineWidth',2,'Color',[0.4660 0.6740 0.1880])
% semilogx (Dp_SMPST3,N_SMPST3*K_Length(1)/K_Length(2),'Color',[0.8500 0.3250 0.0980])%Correction for 6m tube with the 2m tube
% semilogx (Dp_SMPST5,N_SMPST5*K_Length(1)/K_Length(3),'Color',[0.9290 0.6940 0.1250])% Correction for 16m tube with 2m tube
% semilogx (Dp_SMPST5,N_SMPST5*K_Length(2)/K_Length(3),'Color',[0.9290 0.6940 0.1250])% Correction for 16m tube with 6m tube
% semilogx (Dp_SMPST1,N_SMPST1*K_Length(2)/K_Length(1),'Color',[0 0.4470 0.7410])%Correction for 2m tube with 6m tube
% semilogx (Dp_SMPST1,N_SMPST1*K_Length(3)/K_Length(1),'Color',[0 0.4470 0.7410])%Correction for 2m tube with 16m tube
% semilogx (Dp_SMPST3,N_SMPST3*K_Length(3)/K_Length(2),'Color',[0.8500 0.3250 0.0980])%Correction for 6m tube with 16m tube
hold off
legend([h1 h2 h3 h4 h5 h6 h7],{"0.5 m","1.0 m","1.5 m","2.0 m","3.0 m","4.0 m","5.0 m"})
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
set(gca,'FontSize',28)
%xticks([0.01 0.05 0.1 0.5 1])
grid on

% create a new pair of axes inside current figure
axes('position',[.35 .25 .25 .25])
box on % put box around new pair of axes
indexOfInterest = (Dp_SMPST1 < 0.30) & (Dp_SMPST1 > 0.15); % range of t near perturbation
hold on
semilogx(Dp_SMPST1(indexOfInterest),N_SMPST1(indexOfInterest),'LineWidth',2,'Color',[0 0.4470 0.7410])% plot on new axes
semilogx(Dp_SMPST44(indexOfInterest),N_SMPST44(indexOfInterest),'LineWidth',2,'Color',[0.8500 0.3250 0.0980])
semilogx(Dp_SMPST7(indexOfInterest),N_SMPST7(indexOfInterest),'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
semilogx(Dp_SMPST10(indexOfInterest),N_SMPST10(indexOfInterest),'LineWidth',2,'Color',[0.4940 0.1840 0.5560])
semilogx(Dp_SMPST16(indexOfInterest),1.04*N_SMPST16(indexOfInterest),'LineWidth',2,'Color',[0.4660 0.6740 0.1880])
semilogx(Dp_SMPST20(indexOfInterest),1.32*N_SMPST20(indexOfInterest),'LineWidth',2,'Color',[0.3010 0.7450 0.9330])
semilogx(Dp_SMPST13(indexOfInterest),N_SMPST13(indexOfInterest),'LineWidth',2,'Color',[0.6350 0.0780 0.1840])
axis tight


figure (16)
hold on
% h1 = semilogx (Dp_SMPST1,N_SMPST1*K_Length(3)/K_Length(1),'LineWidth',2,'Color',[0 0.4470 0.7410]);
% h2 = semilogx (Dp_SMPST4,N_SMPST4*K_Length(3)/K_Length(2),'LineWidth',2,'Color',[0.8500 0.3250 0.0980]);
% h3 = semilogx (Dp_SMPST7,N_SMPST7,'LineWidth',2,'Color',[0.9290 0.6940 0.1250]);
% h4 = semilogx (Dp_SMPST10,N_SMPST10*K_Length(3)/K_Length(4),'LineWidth',2,'Color',[0.4940 0.1840 0.5560]);
% h5 = semilogx (Dp_SMPST13,N_SMPST13*K_Length(3)/K_Length(5),'LineWidth',2,'Color',[0.4660 0.6740 0.1880]);
h1 = semilogx (Dp_SMPST1,N_SMPST1*K_Length(3)/K_Length(1),'LineWidth',3,'Color',[0 0.4470 0.7410]);
h2 = semilogx (Dp_SMPST44,N_SMPST44*K_Length(3)/K_Length(2),'LineWidth',3,'Color',[0.8500 0.3250 0.0980]);
h3 = semilogx (Dp_SMPST7,N_SMPST7*K_Length(3)/K_Length(3),'LineWidth',3,'Color',[0.9290 0.6940 0.1250]);
h4 = semilogx (Dp_SMPST10,N_SMPST10*K_Length(3)/K_Length(4),'LineWidth',3,'Color',[0.4940 0.1840 0.5560]);
h5 = semilogx (Dp_SMPST15,1.04*N_SMPST15*K_Length(3)/K_Length(5),'LineWidth',3,'Color',[0.4660 0.6740 0.1880]);
h6 = semilogx (Dp_SMPST20,1.32*N_SMPST20*K_Length(3)/K_Length(6),'LineWidth',3,'Color',[0.3010 0.7450 0.9330]);
h7 = semilogx (Dp_SMPST13,N_SMPST13*K_Length(3)/K_Length(7),'LineWidth',3,'Color',[0.6350 0.0780 0.1840]);

hold off
legend([h1 h2 h3 h4 h5 h6 h7],{"0.5 m corrected","1.0 m corrected","1.5 m","2.0 m corrected","3.0 m corrected", "4.0 m corrected", "5.0 m corrected"})
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
set(gca,'FontSize',28)
%xticks([0.01 0.05 0.1 0.5 1])
grid on

% create a new pair of axes inside current figure
axes('position',[.35 .25 .25 .25])
box on % put box around new pair of axes
indexOfInterest = (Dp_SMPST1 < 0.30) & (Dp_SMPST1 > 0.15); % range of t near perturbation
hold on
semilogx (Dp_SMPST1(indexOfInterest),N_SMPST1(indexOfInterest)*K_Length(3)/K_Length(1),'LineWidth',2,'Color',[0 0.4470 0.7410]);
semilogx (Dp_SMPST44(indexOfInterest),N_SMPST44(indexOfInterest)*K_Length(3)/K_Length(2),'LineWidth',2,'Color',[0.8500 0.3250 0.0980]);
semilogx (Dp_SMPST7(indexOfInterest),N_SMPST7(indexOfInterest)*K_Length(3)/K_Length(3),'LineWidth',2,'Color',[0.9290 0.6940 0.1250]);
semilogx (Dp_SMPST10(indexOfInterest),N_SMPST10(indexOfInterest)*K_Length(3)/K_Length(4),'LineWidth',2,'Color',[0.4940 0.1840 0.5560]);
semilogx (Dp_SMPST15(indexOfInterest),1.04*N_SMPST15(indexOfInterest)*K_Length(3)/K_Length(5),'LineWidth',2,'Color',[0.4660 0.6740 0.1880]);
semilogx (Dp_SMPST20(indexOfInterest),1.32*N_SMPST20(indexOfInterest)*K_Length(3)/K_Length(6),'LineWidth',2,'Color',[0.3010 0.7450 0.9330]);
semilogx (Dp_SMPST13(indexOfInterest),N_SMPST13(indexOfInterest)*K_Length(3)/K_Length(7),'LineWidth',2,'Color',[0.6350 0.0780 0.1840]);
axis tight

% figure(17)
% scatter(x,y,'MarkerEdgeColor',[0 0.4470 0.7410])
% hold on
% fit1 = plot(h,'--k');
% fit1.LineWidth = 2;
% fit2 = plot(f,'-.k');
% fit2.LineWidth = 2;
% fit3 = plot(g2,':k');
% fit3.LineWidth = 2;
% hold on
% for i = 1:length(N_SMPST1)
%     y1 = [N_SMPST1(i);N_SMPST4(i);N_SMPST7(i);N_SMPST10(i);N_SMPST13(i)];
% %     y2 = [N_SMPST2(i);N_SMPST4(i);N_SMPST6(i)];
%     scatter(x,y1,'MarkerEdgeColor',[0 0.4470 0.7410])
% %     scatter(x,y2,'MarkerEdgeColor',[0 0.4470 0.7410])
% end
% grid on
% set(gca,'FontSize',28)
% hLeg = {'Measurement data points','y = -4.078*10^6 x^{0.33} + 1.088*10^7','y = -1.085*10^7 x^{0.24} + 2.258*10^7','y = -1.36*10^6 x^{0.46} + 5.332*10^6'}; 
% %legend(hLeg);
% %set(hLeg,'visible','off')
% xa = xlim;
% ya = ylim;
% xt = 0.25 * (xa(2)-xa(1)) + xa(1);
% yt = 0.90 * (ya(2)-ya(1)) + ya(1);
% caption = sprintf('y = %.0f x^{%.2f} + %.0f', h.a, h.b, h.c);
% xlabel('x')
% ylabel('y')
% set(gca,'FontSize',34)

beta = 10*(h.a*(0)^h.b+h.c);
K_Length_GRIMM = beta/(h.a*(L_GRIMM)^h.b+h.c);
K_Length_SMPS = beta/(h.a*(L_SMPS)^h.b+h.c);
K_Length_Cascade = beta/(h.a*(L_Cascade)^h.b+h.c);

%% Stokes correction factor

mu_air = 1.81*10^-5;

%Cascade
u_Cascade = 1.316; %m/s
D_tube_Cascade = 12.7*10^(-3); %diameter of sampling tube (m)
Dp_CI = Dp_CI*10^(-6);

%GRIMM
u_GRIMM = 6.3662; %m/s
Dp_GRIMM = Dp_GRIMM*10^(-6);
D_tube_GRIMM = 2*10^(-3); %diameter of sampling tube (m)


%SMPS
u_SMPS = 2.6526; %m/s
Dp_SMPS1 = Dp_SMPS1*10^(-6);
D_tube_SMPS = 4*10^(-4); %diameter of sampling tube (m)

% DEHS 
rho_DEHS = 912; %kg/m^3
mu_DEHS = 0.023; %Pa*s = kg/(m*s)
t_0_DEHS_GRIMM = rho_DEHS*(Dp_GRIMM).^2/(18*mu_air);
Stk_DEHS_GRIMM = t_0_DEHS_GRIMM*u_GRIMM./D_tube_GRIMM;
t_0_DEHS_SMPS = rho_DEHS*(Dp_SMPS1).^2/(18*mu_air);
Stk_DEHS_SMPS = t_0_DEHS_SMPS*u_SMPS./D_tube_SMPS;

% Eau
rho_eau = 100; %kg/m^3
mu_eau = 10^(-3); %Pa*s = kg/(m*s)
t_0_eau_GRIMM = rho_eau*(Dp_GRIMM).^2/(18*mu_air);
Stk_eau_GRIMM = t_0_eau_GRIMM*u_GRIMM./D_tube_GRIMM;
t_0_eau_SMPS = rho_eau*(Dp_SMPS1).^2/(18*mu_air);
Stk_eau_SMPS = t_0_eau_SMPS*u_SMPS./(D_tube_SMPS);

t_0_eau_Cascade = rho_eau*(Dp_CI).^2/(18*mu_air);
Stk_eau_Cascade = t_0_eau_Cascade*u_Cascade./D_tube_Cascade;

alpha = 0.4*mean(Stk_eau_GRIMM./Stk_DEHS_GRIMM)*10^6;
K_Stk_GRIMM = [alpha*Stk_eau_GRIMM(1:2)/2;alpha*Stk_eau_GRIMM(8)/2;alpha*Stk_eau_GRIMM(9:18)];
K_Stk_SMPS = [alpha*Stk_eau_SMPS(1:80);alpha*Stk_eau_SMPS(81:95)*0.75];
K_Stk_Cascade = [alpha*Stk_eau_Cascade(2);alpha*Stk_eau_Cascade(3:8)];


% m = fit(Stk_DEHS_GRIMM,Stk_eau_GRIMM,'poly1');
% n = fit(Stk_DEHS_SMPS,Stk_eau_SMPS,'poly1');
% o = fit(Stk_DEHS_GRIMM,Stk_DEHS_SMPS(1:length(Stk_DEHS_GRIMM)),'power1');
% p = fit(Stk_eau_GRIMM,Stk_eau_SMPS(1:length(Stk_DEHS_GRIMM)),'power1');
% 
% 
% figure(12)
% scatter(Stk_DEHS_GRIMM,Stk_eau_GRIMM)
% hold on
% scatter(Stk_DEHS_SMPS,Stk_eau_SMPS)
% plot(m)
% plot(n)
% 
% figure(13)
% scatter(Stk_DEHS_GRIMM,Stk_DEHS_SMPS(1:length(Stk_DEHS_GRIMM)))
% hold on
% scatter(Stk_eau_GRIMM,Stk_eau_SMPS(1:length(Stk_DEHS_GRIMM)))
% scatter(Stk_eau_GRIMM(1:13),Stk_eau_Cascade)
% scatter(Stk_eau_SMPS(1:13),Stk_eau_Cascade)
% plot(o)
% plot(p)

%% Evaporation correction factor
D_DEHS = 1.21*10^(-6);
D_eau = 2.6*10^(-6);

Re_DEHS_GRIMM = rho_DEHS*u_GRIMM*(2/1000)/mu_DEHS;
Re_eau_GRIMM = rho_eau*u_GRIMM*(2/1000)/mu_eau;
Re_DEHS_SMPS = rho_DEHS*u_SMPS*(2/1000)/mu_DEHS;
Re_eau_SMPS = rho_eau*u_SMPS*(2/1000)/mu_eau;
Re_DEHS_Cascade = rho_DEHS*u_Cascade*(4/1000)/mu_DEHS;
Re_eau_Cascade = rho_eau*u_Cascade*(4/1000)/mu_eau;

Sc_DEHS = mu_DEHS/(rho_DEHS*D_DEHS);
Sc_eau = mu_eau/(rho_eau*D_eau);

Sh_DEHS_GRIMM = 2+0.552*(Re_DEHS_GRIMM)^0.5*Sc_DEHS^(1/3);
Sh_eau_GRIMM = 2+0.552*(Re_eau_GRIMM)^0.5*Sc_eau^(1/3);
Sh_DEHS_SMPS = 2+0.552*(Re_DEHS_SMPS)^0.5*Sc_DEHS^(1/3);
Sh_eau_SMPS = 2+0.552*(Re_eau_SMPS)^0.5*Sc_eau^(1/3);
Sh_DEHS_Cascade = 2+0.552*(Re_DEHS_Cascade)^0.5*Sc_DEHS^(1/3);
Sh_eau_Cascade = 2+0.552*(Re_eau_Cascade)^0.5*Sc_eau^(1/3);

epsilon = 6; % Empirical scalar

V_tube_GRIMM = pi*(2/1000)^2/4*L_GRIMM*1000; %sampling tube volume (L)
V_dot = 1.2; % flowrate in the GRIMM (L/min)
t_tube_GRIMM = V_tube_GRIMM*60/V_dot;
K_evap = epsilon*(Sh_DEHS_GRIMM/Sh_eau_GRIMM)/((t_tube_GRIMM)^(0.5));

V_tube_SMPS = pi*(2/1000)^2/4*L_SMPS*1000;
t_tube_SMPS = V_tube_SMPS*60/V_dot;
K_evap_SMPS = epsilon*(Sh_DEHS_SMPS/Sh_eau_SMPS)/((t_tube_SMPS)^(0.5));

V_tube_Cascade = pi*((12.7)/1000)^2/4*L_Cascade*1000;
V_dotC = 10;
t_tube_Cascade = V_tube_Cascade*60/V_dotC;
K_evap_Cascade = epsilon*(Sh_DEHS_Cascade/Sh_eau_Cascade)/((t_tube_Cascade)^(0.5));

% figure (14)
% % semilogx(Dp_GRIMM,N_GRIMM13,'LineWidth',1)
% %s = shadedErrorBar(Dp_GRIMM,N_GRIMM13,0.1*N_GRIMM13,'lineProps','b','transparent',1);
% s = shadedErrorBar(Dp_GRIMM*K_evap*10^(6),N_GRIMM13,Errbar_GRIMMcomp,'lineProps','b','transparent',1);
% set(s.mainLine,'LineWidth',2,'LineStyle',':')
% hold on
% % semilogx (Dp_PDA7,dN_PDA7,'LineWidth',1)
% %shadedErrorBar(Dp_PDA7(1:5),dN_PDA7(1:5),0.1*dN_PDA7(1:5),'lineProps','r','transparent',1);
% %shadedErrorBar(Dp_PDA7(5:end),dN_PDA7(5:end),0.16*dN_PDA7(5:end),'lineProps','r','transparent',1);
% shadedErrorBar(Dp_PDA7,dN_PDA7,Errbar_PDAcomp,'lineProps','r','transparent',1);
% legend("GRIMM","PDA")
% % title("Comparaison des instruments, Test 1, Spray")
% xlabel('Dp (micrometer)')
% ylabel('Concentration (# particles per litre)')
% set(gca, 'XScale', 'log')
% New_XTickLabel = get(gca,'xtick');
% set(gca,'XTickLabel',New_XTickLabel);
% set(gca,'FontSize',28)
% ylim([0 2.5*10^7])
% grid on

%% Corrected comparison figure

figure(20)
shadedErrorBar(Dp_GRIMM(1:13)*K_evap*10^6,N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM,0.20*N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM,'lineProps','b','transparent',1);
hold on
s = shadedErrorBar(Dp_SMPS5(1:95)*K_evap_SMPS,N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS(1:95),0.20*N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS(1:95),'lineProps','r','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
w = shadedErrorBar(Dp_PDA4(1:42),dN_PDA4(1:42),0.07*dN_PDA4(1:42),'lineProps','k','transparent',1);
set(w.mainLine,'LineWidth',2,'LineStyle','-.')
hold on
% semilogx(Dp_CI(3:10),dN_CI2(3:10),'color','#77AC30');
p = shadedErrorBar(Dp_CI(4:10)*10^6*K_evap_Cascade,dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade,0.5*dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade,'lineProps',{'color','#77AC30'},'transparent',1);
set(p.mainLine,'LineWidth',2,'LineStyle','--')
legend("OAS","SMPS","PDA","Cascade Impactor",'Location','northwest')
% title("Comparaison des instruments, Test 1, Spray")
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
%set(gca, 'YScale', 'log')
set(gca, 'XScale', 'log')
ylim([0 5*10^8])
xticks([0.5 1 5 10])
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',28)
grid on

%%%%%%%%%%%%%
figure(71)
% semilogx (Dp_SMPS8(1:83),N_SMPS8(1:83),'LineWidth',1)
%s = shadedErrorBar(Dp_SMPS8(1:83),N_SMPS8(1:83),0.06*N_SMPS8(1:83),'lineProps','r','transparent',1);
s = shadedErrorBar(Dp_SMPS8(1:83),N_SMPS8(1:83),Errbar_SMPSdry(1:83),'lineProps','r','transparent',1);
set(s.mainLine,'LineWidth',2,'LineStyle',':')
hold on
% semilogx(Dp_SMPS14(1:83),N_SMPS14(1:83),'LineWidth',1)
%shadedErrorBar(Dp_SMPS14(1:83),N_SMPS14(1:83),0.06*N_SMPS14(1:83),'lineProps','b','transparent',1);
shadedErrorBar(Dp_SMPS14(1:83),N_SMPS14(1:83),Errbar_SMPSwet(1:83),'lineProps','b','transparent',1);
shadedErrorBar(Dp_SMPS14(1:83)*K_evap_SMPS,N_SMPS14(1:83).*K_Stk_SMPS(1:83)*4/8,Errbar_SMPSwet(1:83)*1.5,'lineProps','c','transparent',1);
hold on
% semilogx (D_s5,N_SMPS8,'LineWidth',1)
w = shadedErrorBar(D_s5(1:83),norm(1:83),0.06*norm(1:83),'lineProps','k','transparent',1);
set(w.mainLine,'LineWidth',2,'LineStyle','-.')
hold off
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
% title("Distribution de taille � la source du SMPS pour le DEHS")
legend("Dried","Wet","Corrected Wet","Source")
set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',28)
grid on

%% Statistics on size distributions

% DEHS
%--------------------
%GRIMM
max_DEHS_GRIMM = max(N_GRIMM1);
variance_DEHS_GRIMM = var(Dp_GRIMM(1:26)*10^6);
std_DEHS_GRIMM = std(Dp_GRIMM(1:26)*10^6);
cov_DEHS_GRIMM = cov(Dp_GRIMM(1:26)*10^6,N_GRIMM1(1:26));
mean_DEHS_GRIMM = mean(nonzeros(N_GRIMM1));
median_DEHS_GRIMM = median(nonzeros(N_GRIMM1));
iqr_DEHS_GRIMM = iqr(N_GRIMM1);
%variance_DEHS_GRIMM = var(N_GRIMM1);
%std_DEHS_GRIMM = std(N_GRIMM1);

% for n = 1:length(N_GRIMM1)
%     for m = 1:floor(N_GRIMM1(n))
%         Data_DEHS_GRIMM_stat(m) = Dp_GRIMM(n)*10^6;
%     end
% end
% [mu_DEHS_GRIMM,sigma_DEHS_GRIMM] = normfit(log(Data_DEHS_GRIMM_stat));
% variance_DEHS_GRIMM = var(log(Data_DEHS_GRIMM_stat));


%SMPS
max_DEHS_SMPS = max(0.85*N_SMPS1(1:95));
variance_DEHS_SMPS = var(Dp_SMPS1(1:95)*10^6);
std_DEHS_SMPS = std(Dp_SMPS1(1:95)*10^6);
cov_DEHS_SMPS = cov(Dp_SMPS1(1:95)*10^6,N_SMPS1(1:95));
mean_DEHS_SMPS = mean(nonzeros(N_SMPS1(1:95)));
median_DEHS_SMPS = median(nonzeros(N_SMPS1(1:95)));
iqr_DEHS_SMPS = iqr(N_SMPS1(1:95));
%variance_DEHS_SMPS = var(N_SMPS1(1:95));
%std_DEHS_SMPS = std(N_SMPS1(1:95));

% for n = 1:length(N_SMPS1(1:95))
%     for m = 1:floor(N_SMPS1(n))
%         Data_DEHS_SMPS_stat(m) = Dp_SMPS1(n)*10^6;
%     end
% end
% [mu_DEHS_SMPS,sigma_DEHS_SMPS] = normfit(log(Data_DEHS_SMPS_stat));

%Cascade impactor
max_DEHS_CI = max(N_CI1(6:12));
variance_DEHS_CI = var(Dp_CI(6:12)*10^6);
std_DEHS_CI = std(Dp_CI(6:12)*10^6);
cov_DEHS_CI = cov(Dp_CI(6:12)*10^6,N_CI1(6:12));
mean_DEHS_CI = mean(nonzeros(N_CI1(6:12)));
median_DEHS_CI = median(nonzeros(N_CI1(6:12)));
iqr_DEHS_CI = iqr(N_CI1(6:12));
%variance_DEHS_CI = var(N_CI1(6:12));
%std_DEHS_CI = std(N_CI1(6:12));

% for n = 1:length(N_CI1(6:12))
%     for m = 1:floor(N_CI1(n)/10)
%         Data_DEHS_CI_stat(m) = Dp_CI(n)*10^6;
%     end
% end
% [mu_DEHS_CI,sigma_DEHS_CI] = normfit((Data_DEHS_CI_stat));


%PDA
max_DEHS_PDA = max(dN_PDA3(1:67));
var_DEHS_PDA = var(Dp_PDA3(1:67));
std_DEHS_PDA = std(Dp_PDA3(1:67));
cov_DEHS_PDA = cov(Dp_PDA3(1:67),dN_PDA3(1:67));
mean_DEHS_PDA = mean(nonzeros(dN_PDA3(1:67)));
median_DEHS_PDA = median(nonzeros(dN_PDA3(1:67)));
iqr_DEHS_PDA = iqr(dN_PDA3(1:67));
%variance_DEHS_PDA = var(dN_PDA3(1:67));
%std_DEHS_PDA = std(dN_PDA3(1:67));

% for n = 1:length(dN_PDA3(1:67))
%     for m = 1:floor(dN_PDA3(n))
%         Data_DEHS_PDA_stat(m) = Dp_PDA3(n);
%     end
% end
% [mu_DEHS_PDA,sigma_DEHS_PDA] = normfit(log(Data_DEHS_PDA_stat));

%--------------------
% Water
%--------------------
%GRIMM
max_water_GRIMM = max(N_GRIMM4(1:13));
mean_water_GRIMM = mean(N_GRIMM4(1:13));
median_water_GRIMM = median(N_GRIMM4(1:13));
iqr_water_GRIMM = iqr(N_GRIMM4(1:13));
variance_water_GRIMM = var(N_GRIMM4(1:13));
std_water_GRIMM = std(N_GRIMM4(1:13));

% for n = 1:length(N_GRIMM4(1:13))
%     for m = 1:floor(N_GRIMM4(n)/(10^3))
%         Data_water_GRIMM_stat(m) = Dp_GRIMM(n)*10^6;
%     end
% end
% [mu_water_GRIMM,sigma_water_GRIMM] = normfit(log(Data_water_GRIMM_stat));

%SMPS
max_water_SMPS = max(N_SMPS4(1:95));
mean_water_SMPS = mean(N_SMPS4(1:95));
median_water_SMPS = median(N_SMPS4(1:95));
iqr_water_SMPS = iqr(N_SMPS4(1:95));
variance_water_SMPS = var(N_SMPS4(1:95));
std_water_SMPS = std(N_SMPS4(1:95));

% for n = 1:length(N_SMPS4(1:95))
%     for m = 1:floor(N_SMPS4(n)/(10^3))
%         Data_water_SMPS_stat(m) = Dp_SMPS5(n);
%     end
% end
% [mu_water_SMPS,sigma_water_SMPS] = normfit(log(Data_water_SMPS_stat));

%Cascade impactor
max_water_CI = max(dN_CI2(6:12));
mean_water_CI = mean(dN_CI2(6:12));
median_water_CI = median(dN_CI2(6:12));
iqr_water_CI = iqr(dN_CI2(6:12));
variance_water_CI = var(dN_CI2(6:12));
std_water_CI = std(dN_CI2(6:12));

% for n = 1:length(dN_CI2(6:12))
%     for m = 1:floor(dN_CI2(n)/(10^3))
%         Data_water_CI_stat(m) = Dp_CI(n)*10^6;
%     end
% end
% [mu_water_CI,sigma_water_CI] = normfit(Data_water_CI_stat);

%PDA
max_water_PDA = max(dN_PDA4(1:42));
mean_water_PDA = mean(dN_PDA4(1:42));
median_water_PDA = median(dN_PDA4(1:42));
iqr_water_PDA = iqr(dN_PDA4(1:42));
variance_water_PDA = var(dN_PDA4(1:42));
std_water_PDA = std(dN_PDA4(1:42));

% for n = 1:length(dN_PDA4(1:42))
%     for m = 1:floor(dN_PDA4(n)/(10^3))
%         Data_water_PDA_stat(m) = Dp_PDA4(n);
%     end
% end
% [mu_water_PDA,sigma_water_PDA] = normfit(log(Data_water_PDA_stat));

%--------------------
% Water corrected
%--------------------
%GRIMM
max_waterCorr_GRIMM = max(N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM);
mean_waterCorr_GRIMM = mean(N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM);
median_waterCorr_GRIMM = median(N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM);
iqr_waterCorr_GRIMM = iqr(N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM);
variance_waterCorr_GRIMM = var(N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM);
std_waterCorr_GRIMM = std(N_GRIMM4(1:13)*K_Length_GRIMM.*K_Stk_GRIMM);

% for n = 1:length(N_GRIMM4(1:13))
%     for m = 1:floor(N_GRIMM4(n)/(10^3)*K_Length_GRIMM.*K_Stk_GRIMM)
%         Data_corr_GRIMM_stat(m) = Dp_GRIMM(n)*10^6;
%     end
% end
% [mu_corr_GRIMM,sigma_corr_GRIMM] = normfit(log(Data_corr_GRIMM_stat));

%SMPS
% max_waterCorr_SMPS = max(N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS);
% mean_waterCorr_SMPS = mean(N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS);
% median_waterCorr_SMPS = median(N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS);
% iqr_waterCorr_SMPS = iqr(N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS);
% variance_waterCorr_SMPS = var(N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS);
% std_waterCorr_SMPS = std(N_SMPST4(1:95)*K_Length_SMPS.*K_Stk_SMPS);

% for n = 1:length(N_SMPS4(1:95))
%     for m = 1:floor(N_SMPS4(n)/(10^2)*K_Length_SMPS.*K_Stk_SMPS)
%         Data_corr_SMPS_stat(m) = Dp_SMPS5(n);
%     end
% end
% [mu_corr_SMPS,sigma_corr_SMPS] = normfit(log(Data_corr_SMPS_stat));
% variance_waterCorr_SMPS = var(log(Data_corr_SMPS_stat));

%Cascade impactor
max_waterCorr_CI = max(dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade);
mean_waterCorr_CI = mean(dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade);
median_waterCorr_CI = median(dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade);
iqr_waterCorr_CI = iqr(dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade);
variance_waterCorr_CI = var(dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade);
std_waterCorr_CI = std(dN_CI2(4:10)*K_Length_Cascade.*K_Stk_Cascade);

% for n = 1:length(dN_CI2(6:12))
%     for m = 1:floor(dN_CI2(n)/(10^3)*K_Length_Cascade.*K_Stk_Cascade)
%         Data_corr_CI_stat(m) = Dp_CI(n)*10^6;
%     end
% end
% [mu_corr_CI,sigma_corr_CI] = normfit(log(Data_corr_CI_stat));

%PDA
max_waterCorr_PDA = max(dN_PDA4(1:42));
mean_waterCorr_PDA = mean(dN_PDA4(1:42));
median_waterCorr_PDA = median(dN_PDA4(1:42));
iqr_waterCorr_PDA = iqr(dN_PDA4(1:42));
variance_waterCorr_PDA = var(dN_PDA4(1:42));
std_waterCorr_PDA = std(dN_PDA4(1:42));

% mu_corr_PDA = mu_water_PDA;
% sigma_corr_PDA = sigma_water_PDA;


%--------------------
%Variance : compare our mode and peak of the distribution from each
%instrument in the three configurations.
var_DEHS_mode = var([0.28,0.25,0.38,0.30]);
range_DEHS_mode = range([0.28,0.25,0.38,0.30]);
var_DEHS_peak = var([5.03*10^7,6.41*10^7,7.73*10^7,5.77*10^7]);
range_DEHS_peak = range([5.03*10^7,6.41*10^7,7.73*10^7,5.77*10^7]);

var_water_mode = var([0.28,0.051,0.054,4.00]);
range_water_mode = range([0.28,0.051,0.054,4.00]);
var_water_peak = var([2.45*10^7,1.17*10^9,1.14*10^9,2.17*10^8]);
range_water_peak = range([2.45*10^7,1.17*10^9,1.14*10^9,2.17*10^8]);

var_corr_mode = var([3.8,4.52,3.70,4.00]);
range_corr_mode = range([3.8,4.52,3.70,4.00]);
var_corr_peak = var([4.50*10^8,2.81*10^8,1.86*10^8,2.17*10^8]);
range_corr_peak = range([4.50*10^8,2.81*10^8,1.86*10^8,2.17*10^8]);

%--------------------------------
%Span/range of the different configurations regrouping all instruments.
range_DEHS = 5 - 0.0225;
range_water = 22 - 0.0225;
range_corr = 22 - 0.26;


%% Mass conservation

M_f = sum(m_f5); %masse s�ch�e mesur�e en gramme (g)

V_s = pi*((D_s5(1:83)*10^(-6)).^3)/6; %m^3
M_s = 1000*sum(norm.*V_s)*1000; % masse � la source en gramme (g)

V_w = pi*((Dp_SMPS14(1:83)*10^(-6)).^3)/6; %m^3
M_w = 3160*sum(N_SMPS14(1:83)*1000.*V_w)*1000; % masse � la source en gramme (g)

V_f = pi*((Dp_SMPS8(1:83)*10^(-6)).^3)/6; %m^3
M_f_calc = 2160*sum(N_SMPS8(1:83)*1000.*V_f)*1000; % masse s�che calcul�e en gramme (g)

M_L = M_s-M_f; % mass of solids loss in the sampling line and the diffusion dryer
M_L_DD = M_w-M_f; %Mass of solids loss in the diffusion dryer only

m_grain = 0.00005850; %mass of a grain of salt
n_bl = 100/m_grain; %number of grains of salt in the bulk liquid per liter
n_s = n_bl*sum(V_s.*norm)*1000;%number of grains of salt at the source
m_saltsource = n_s*m_grain;
m_watersource = M_s - m_saltsource;

