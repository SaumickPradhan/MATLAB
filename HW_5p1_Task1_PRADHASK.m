% HW 5.1 Task 1: Calculate x, y, t equations and plot graphs
% File: HW_5p1_Task1_PRADHASK.m
% Date: 02/17/2021
% By: (If Team Assignment, include all members info)
%     Saumick Pradhan
%
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Saumick Pradhan
%
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I
% have a general understanding of all aspects of its
% development and execution.
%
% Calculates the x(i), y(i), t(i) using mew and then plots graph
% coordinates x and y

clc();clear();

%Take inputs for mew
Mew = input("input value of mew (between 0 and 1): ");

%check input condition
while ((Mew<0) || (Mew>1))

    fprintf("\nInvalid input. Enter between 0 and 1.")
    Mew = input("input value of mew (between 0 and 1): ");
    
end

%Initialize variables
x = zeros;
y = zeros;
t = zeros;
% initialize position
x(1) = 0.4;
y(1) = 0.4;
t(1) = 0.4;

%loop to make x, y, t equations
for i = 2 : 10001
    x(i) = 1 + Mew * (x(i-1) * cos(t(i-1)) - y(i-1) * sin(t(i-1)));
    y(i) = Mew * (x(i-1) * sin(t(i-1)) + y(i-1) * cos(t(i-1)));
    t(i) = 0.4 - (6/(1+(x(i)^2)+(y(i)^2)));
end

%plot graph with conditions
plot(x(2001:10001),y(2001:10001),'r.','MarkerSize',1);
xlim([-.5,2]);
ylim([-2.5,1]);
     