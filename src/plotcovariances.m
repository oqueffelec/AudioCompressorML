
function plotcovariances(mix)

colordef white
colors = ['r';'b';'g';'m';'c';'k';'y';'r';'b';'g'];

for k = 1:mix.ncentres
    switch mix.covar_type
        case 'spherical'
            covmat = mix.covars(k)*eye(mix.nin);
        case 'diag'
            covmat = diag(mix.covars(k,:));
        case 'full'
            covmat = mix.covars(:,:,k);
    end
            
    [v,d] = eig(covmat);
    for j = 1:2
        % Ensure that eigenvector has unit length
        v(:,j) = v(:,j)/norm(v(:,j));
        start=mix.centres(k,:)-sqrt(d(j,j))*(v(:,j)');
        endpt=mix.centres(k,:)+sqrt(d(j,j))*(v(:,j)');
        linex = [start(1) endpt(1)];
        liney = [start(2) endpt(2)];
        line(linex, liney, 'Color', colors(k,:), 'linewidth', 1.5)
    end
    % Plot ellipses of one standard deviation
    theta = 0:0.02:2*pi;
    x = sqrt(d(1,1))*cos(theta);
    y = sqrt(d(2,2))*sin(theta);
    % Rotate ellipse axes
    ellipse = (v*([x; y]))';
    % Adjust centre
    ellipse = ellipse + ones(length(theta), 1)*mix.centres(k,:);
    plot(ellipse(:,1), ellipse(:,2), colors(k,:), 'linewidth', 2.5);
end