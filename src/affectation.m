function [clusters, jw] = affectation(X,C,K)
n=size(X,1);
jw=0;
for i =1:n
    for k=1:K
        distance(k)= norm(X(i,:)-C(k,:),2);
    end
    [val,indice]=min(distance);
    clusters(i)=indice;
    jw=jw+val;
end