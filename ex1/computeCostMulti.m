function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
h = (X * theta); % computes vector of estimates h(x)
s = sum((h - y).^2); % sums the vector of squared differences between vector of estimates h(x) and vector y
J = (1 / (2 * m)) * s; % takes the mean of squared differences
% =========================================================================

end
