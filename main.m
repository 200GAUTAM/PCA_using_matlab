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

[U, S] = pca(X_norm);

display(U);
hold on;
hold on;
drawLine(mu, mu + 1.5 * S(1,1) * U(:,1)', '-k', 'LineWidth', 2);
drawLine(mu, mu + 1.5 * S(2,2) * U(:,2)', '-k', 'LineWidth', 2);
hold off;

fprintf('Top eigenvector: \n');
fprintf(' U(:,1) = %f %f \n', U(1,1), U(2,1));
fprintf('\n(you should expect to see -0.707107 -0.707107)\n');


