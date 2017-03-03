clear;
close all;
clc;

fprintf('visualize 2d data set\n');
load('data1.mat');
plot(X(:, 1), X(:, 2), 'bo');
axis([0.5 6.5 2 8]); axis square;
fprintf('Print any key to continue.....\n');
pause;

[X_norm, mu, sigma] = normalize(X);

