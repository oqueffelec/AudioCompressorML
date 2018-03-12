
function M = distancegen(X, C)

% Calcul de la matrice de distance
N = size(X, 1);
K = size(C, 1);
Mx = X*X';
Mc = C*C';
psx = diag(Mx);
psc = diag(Mc);
clear Mx Mc

M = psx*ones(1,K)+ones(N,1)*psc' - 2*(X*C');
