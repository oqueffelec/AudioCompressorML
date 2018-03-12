function C = nouveaux_centres(X,clusters)
classcode=unique(clusters);
K=length(classcode);
for k=1:K
    indices=find(clusters==classcode(k));
    centrek=mean(X(indices,:));
    C(k,:)=centrek;
end