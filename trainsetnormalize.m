function [X_norm, mu, sigma] = trainsetnormalize(X)

X_norm = X;
                  
y = sum(X);
z  = size(X,1);
u1 = y./z;                 
mu = X-u1;

save u1.mat u1

sigma = std(X);            
save sigma.mat sigma


c = bsxfun(@rdivide, mu, sigma);
c(isnan(c)) = 0;
X_norm = c ;                 






% ============================================================

end
