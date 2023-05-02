%% One Piece anime-manga correspondance
clear; clc; close all;

data = readtable("onepiece_mod.csv");
episodes = table2array(data(:,1));
chapters_string = string(table2array(data(:,2)));

chapters_num = str2double(chapters_string);
chapters_matrix = str2num_my(chapters_string);

%mean_array = mean(chapters_matrix,2);

order1 = chapters_matrix(:,1);
convMean = nonzero_mean(chapters_matrix);

figure();
axis();
pl1 = plot(episodes,order1,'LineStyle','none','Marker','.','Color','b');
grid on; 
hold on;
xlabel("anime");
ylabel("manga");
pl2 = plot(episodes,convMean,'LineStyle','-','Marker','.','Color','r');

xplot = 1:1100;
plot(xplot,xplot,'Color','g');
legend([pl1, pl2],["Order 1", "Mean"]);

%Fit lineare
x_beg = 892; %Only thing to modify
x = episodes(x_beg:length(episodes));
y = convMean(x_beg:length(convMean));
fit = regressione_lineare(x,y);
plot(xplot,fit.m*xplot+fit.b,'Color','k');

y_wanoEnd = 1057;
x_wanoEnd = (y_wanoEnd-fit.b)/fit.m;














