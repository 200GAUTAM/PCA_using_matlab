clear;
close all;
clc;

fprintf('visualize 2d data set');
load('data1.mat');
plot(X(:, 1), X(:, 2), 'bo');
axis([0.5 6.5 2 8]); axis square;
pause;