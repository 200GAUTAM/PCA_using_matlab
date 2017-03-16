function Z = projectData(X_norm, U, k)
Z = zeros(size(X_norm, 1), k);
U_reduced = U(:, 1:k);
Z = X_norm * U_reduced;
end