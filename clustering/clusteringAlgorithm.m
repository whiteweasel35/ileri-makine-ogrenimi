clc;
clear all;
close all;

load('dataset.mat');


K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5];


idx = findClosestCentroids(X, initial_centroids);
centroids = computeCentroids(X, idx, K);

max_iters = 15; % 10 iterasyonda buluyor yerini

initial_centroids = [3 3; 6 2; 8 5];

figure('visible','on'); 

hold on; 

plotProgresskMeans(X, initial_centroids, initial_centroids, idx, K, 1); 

xlabel('command window da ENTER a basin ','FontWeight','bold','FontSize',14)

[~, ~] = runkMeans(X, initial_centroids, max_iters, true);

set(gcf,'visible','off'); 

hold off;

