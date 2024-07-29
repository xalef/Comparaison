clear all ; close all ; clc

GRIMM = importdata("GRIMM_EPF.xlsx");

Dp_GRIMM = [0.25;0.28;0.30;0.35;0.40;0.45;0.50;0.58;0.65;0.70;0.80;1.00;1.30;1.60;2.00;2.50;3.00;3.50;4.00;5.00;6.50;7.50;8.50;10.00;12.50;15.00;17.50;20.00;25.00;30.00;32.00];


N_GRIMM1 = [];
longueur = size(GRIMM.data.Test1);
for n = 2:longueur(2)
N_GRIMM1 =  [N_GRIMM1;mean(GRIMM.data.Test1(:,n))];
N_GRIMM1(n-1) = N_GRIMM1(n-1)/(log10(Dp_GRIMM(n))-log10(Dp_GRIMM(n-1)));
end

figure (1)
clf
set(gca, 'XScale', 'log')
s = plot(Dp_GRIMM(1:26),N_GRIMM1(1:26));
set(s.mainLine,'LineWidth',2,'LineStyle',':')
xlabel('Particle diameter (\mum)')
ylabel('Concentration (particles/L_{air})')
%set(gca, 'XScale', 'log')
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
set(gca,'FontSize',28)
grid on