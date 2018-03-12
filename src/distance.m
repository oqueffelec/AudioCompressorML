function M = distance(X)

% Calcul de la matrice de Distance pour l'algo CHA
N = size(X,1);
M = X*X';
ps = diag(M);
M = ps*ones(1,N)+ones(N,1)*ps' - 2*M;
% mettre d(x_i, x_i) = infini
for i=1:N 
    M(i,i) = inf; 
end