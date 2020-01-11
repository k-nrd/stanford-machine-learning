function [Theta1_grad Theta2_grad] = backprop(y, a3, a2, a1, Theta1, Theta2)

% number of examples
m = size(a1, 1);

% calculate d3
d3 = a3 - y;

% calculate d2, excluding error of bias term
z2 = a1 * Theta1';
d2 = d3 * Theta2;
d2 = d2(:, 2:end) .* sigmoidGradient(z2);

% calculate gradients of both thetas
Theta1_grad = (a1' * d2)' / m;
Theta2_grad = (a2' * d3)' / m;

end