% function to define complex bus numbers
function A = busNumbers(n)
    A = [i-n/2+1:1:i+n/2; 1i*(-n/2+1:1:n/2)];
end

% number of buses
%n = 5;

% complex load, generator, and slack bus numbers
load_bus = input('Enter complex load bus numbers separated by spaces: ');
gen_bus = input('Enter complex generator bus numbers separated by spaces: ');
slack_bus = input('Enter complex slack bus numbers separated by spaces: ');

% construct the A matrix
A = [2*(n+1); 2*load_bus; 2*gen_bus; -2*slack_bus; 0; 0];

% construct the B matrix
B = [-load_bus'; -gen_bus'; slack_bus'];

% calculate the number of iterations
n_iter = length(B);

% initialize the solution vector
x = zeros(3*n,1);

% Gauss-Seidel iteration
for i = 1:n_iter
    x = A(1,:) * interp1(A(1,:), A(2,:), A(1,:), x(1)) + B(i);
end

% display solution
disp(['The solution vector x is: ', num2str(x)]);
