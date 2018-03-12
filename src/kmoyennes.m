function [C,jw,clusters] = kmoyennes(X,CO,K,seuil)
C=CO;
iter=1;
jcourant=0.001;
jold=0.001+10*seuil;
while(jold-jcourant>seuil)
    jold=jcourant;
    [clusters,jcourant]=affectation(X,C,K);
    jw(iter)=jcourant;
    C=nouveaux_centres(X,clusters);
    iter=iter+1;
end
end
