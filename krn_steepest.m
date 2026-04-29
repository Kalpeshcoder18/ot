


































% Steepest Decent Method
% Iterative Method 
% Gradient Method
% 
% function function_name=(argument)(expression) argument-> function variable

% Min f(x1,x2) = x1^2 + 2x2^2
% del f = 
% initiail guess = [3,3]
% xnew = xold - alpha(del f)

clc 
clear all

% Define objective function
f=@(x1,x2) (x1.^2 + 2*x2.^2);

% Define Gradient Function
grad_f=@(x1,x2) [2*x1 ; 4*x2];

% initial guess
x=[3;3];

% Maximum number of iterations
max_itr=100;

% Tolerance
tol=1e-6;

% Fixed step size
alpha=0.1;

fprintf('\n Initial Point: (%f,%f)',x(1),x(2));

for i=1:max_itr
    % compute gradient at current point
    gradient=grad_f(x(1),x(2));

    if norm(gradient)<tol
        fprintf('\n Converged after %d iterations',i-1);
        break;
    end
    % update solution
    x=x-alpha*gradient;
    fprintf('\n Iteration %d : x=(%f,%f), f(x)=%f',i,x(1),x(2),f(x(1),x(2)));
end

fprintf('Final Solution: (%f,%f)',x(1),x(2));
fprintf('\n Minimum function value: %f', f(x(1),x(2)));
