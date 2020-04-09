clear;
set(gcf,'unit','centimeters','position',[10 5 12 12]);
x = [1	2	3	4	5];
y1 = [0.164334
0.277992
0.367393
0.4348
0.959906];
y2 = [0.99171
0.707847
29.3531
1.41542
15.6647];

linesize=12;
linewidth=3;
h(1) = plot(x,y1,'r*-','linewidth',linewidth,'MarkerSize',linesize);
hold on;
h(2) = plot(x,y2,'bo-','linewidth',linewidth,'MarkerSize',linesize);
hold on;

xlabel('motif size');ylabel('Time(sec)');
axis([1 5 0.1 100]);
set(gca, 'YScale', 'log') 

set(gca,'YTickLabel',{'10^{-1}' '1'  '10' '10^2'})
set(gca,'YTick',[0.1 1 10 100])

set(gca,'XTick',[1:1:5])
set(gca,'XTickLabel',{'3' '4' '5' '6' '7'})
set(gca,'fontsize',20,'fontweight','bold') 
grid off;
set(gca,'looseInset',[0 0 0 0]);

fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,'/Users/liboxuan/Dropbox/应用/Overleaf/MClique Algo/figures/dynamic_graph/removeEdge/varymotifsize-yeast.pdf','-dpdf');