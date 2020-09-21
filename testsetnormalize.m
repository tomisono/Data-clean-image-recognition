function [X_norm] = testsetnormalize(X)

X_norm = X;

u1 = load('u1.mat');              % obtained after performing trainset normalize
sigma = load('sigma.mat');

u1 = [struct2cell(u1){:}];         
sigma = [struct2cell(sigma){:}];       % to convert struct size 1x1 to matrix

mu = X-u1;                                                    
X_norm = mu./sigma;





% ============================================================

end
