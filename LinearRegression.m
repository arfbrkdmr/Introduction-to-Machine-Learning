%% Lecture 2-1 Liner Regression
% Author: AKHTAR JAMIL
% Linear regression Demo
%% Setting environment
close all;
clc;
clear;

%% Linear regression

% number of observations
n = 100;
%add some noise to data
noise = randn(n,1);

% generate some random data
x= rand(n,1)*10;
y = 3+ 2.5*x+noise;

plot(x,y,'r.', 'MarkerSize',15);
grid on

X = [ones(n,1) x];

%perform least square methods for linear regression to find b0 and b1
%b = regress(y,X);

% or Use \ operator to find b0 abd b1
b2 = X\y;

% fit  the line b0 + b1*x
pred= X*b2;
hold on;
plot(x,pred,'g-', 'LineWidth',3)
