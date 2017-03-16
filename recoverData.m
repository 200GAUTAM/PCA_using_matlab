function x_rec = recoverData(Z,U,k)

x_rec = zeros(size(Z,1), size(U,1));
U_reduced = U(:, 1:k);
x_rec = Z * U_reduced';
end;