
function eff_clusters = plotclusters(clusters, X, K)

% cluster : résultat de clustering
% X : donnees
% K nombre de clusters voulus

d = size(X, 2);
if d ~=2
    error('Affichage disponible uniquement en 2D')
end

couleur = 'rbgmckyrbg';
symbole = 'ovpsh>xd<+';

eff_clusters = zeros(K,1);

figure;

for i=1:K
    if iscell(clusters)
        ii=clusters{i};
    else
        ii = find(clusters==i);
    end
    eff_clusters(i) = length(ii);
    
    plot(X(ii,1), X(ii,2), [couleur(i), symbole(i)], 'markersize', 8, 'markerfacecolor', couleur(i));
    %plot(X(ii,1), X(ii,2), [couleur(i), symbole(i)], 'markersize', 8);
    hold on ;
end;

title('Résultat clustering','fontsize', 14)