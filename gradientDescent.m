%% Created by AKhtar Jamil
% Reference: https://github.com/tirthajyoti/GradDescent/blob/master/GradDes1.m

clear;
clc;
close all;

% number of observations
n=100;
%add some noise to data
noise = randn(n,1);

% generate some random data
x= rand(n,1)*10;
y = 3+ 2.5*x+noise;

% LEARNING RATE
alpha = 0.01;

X = [ones(n,1) x];
weight = rand(2,1);

% Number of iterations
num_iter = 10;
J_history = zeros(num_iter,1); % Error vector initialization;
% GradientDescent
for i = 1:num_iter
    % Hypothesis function, inner product of X and theta
    h = X*weight;
    J =lossfunction(y,h);
    % Partial derivative of J(theta) with respect to theta
    theta_change = (alpha/n)*(X'*(h-y));
    weight = weight-theta_change; % Update theta vector
    J_history(i) = J;
    y_hat = weight(1)+x*(weight(2));
    figure(1),
plot(x,y,'r.', 'MarkerSize',15);
grid on
hold on;
plot(x,y_hat,'g-', 'LineWidth',3)
pause(1)

end


% Predict the value using optimal weights
y_hat = weight(1)+x*(weight(2));
% sum of squared error
SSE = sum((y-y_hat).^2);
disp(SSE)
%show results

figure, plot(J_history)

