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

display(S);

hold on;
hold on;
drawLine(mu, mu + 1.5 * S(1,1) * U(:,1)', 'bo', 'LineWidth', 2);
drawLine(mu, mu + 1.5 * S(2,2) * U(:,2)', 'bo', 'LineWidth', 2);
hold off;

fprintf('Top eigenvector: \n');
fprintf(' U(:,1) = %f %f \n', U(1,1), U(2,1));
fprintf('\n(you should expect to see -0.707107 -0.707107)\n');
fprintf('Program paused press enter to continue');
pause;

% dimension reduction here

%plot(X_norm(:, 1), X_norm(:, 2), 'ro');
axis([-4 3 -4 3]); axis square
k = 1;
Z = projectData(X_norm, U, k);

X_rec  = recoverData(Z, U, k);
display(X_rec);
fprintf('Approximation of the first example: %f %f\n', X_rec(1, 1), X_rec(1, 2));
fprintf('\n(this value should be about  -1.047419 -1.047419)\n\n');

%  Draw lines connecting the projected points to the original points
hold on;
plot(X_rec(:, 1), X_rec(:, 2), 'rx');
for i = 1:size(X_norm, 1)
    drawLine(X_norm(i,:), X_rec(i,:), '--k', 'LineWidth', 1);
end
hold off

fprintf('Program Ended press Enter to exit \n');
pause;

