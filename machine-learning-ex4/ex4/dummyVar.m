function y = dummyVar(y)

m = length(y);
y = sparse(y, 1:m, 1)';