% HW 5.1 Task 2: Create a plot of possible gripper position of a simple schematic of a two-link robot arm.
% File: HW_5p1_Task2_PRADHASK.m
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
% Input link lengths L1 and L2, create theta 1 and theta 2. Create X
% gripper and Y gripper matrix and plot a graph.

clc();clear();

%Input L1 and L2
L1 = input("Input value of Length 1: ");
L2 = input("\nInput value of Length 2: ");

%Check inputs validity
while ((L1<0) || (L2<0))
    
    if (L1<0)
        fprintf("\nInvalid Input for the Length 1. Enter positive value.")
        L1 = input("\nEnter the value of Length 1: ");
    end
    
    if (L2<0)
        fprintf("\nInvalid Input for the Length 2. Enter positive value.")
        L1 = input("\nEnter the value of Length 1: ");
    end
    
end

%Initialize variables
Xg = zeros;
Yg = zeros;
c = 1;

%run loop for matrix
for i = 0 : 5 : 90
    for j = 0 : 5 : 180 
        Xg(c) = L1 * cos(i*(pi/180)) + L2 * cos((i+j)*(pi/180));
        Yg(c) = L1 * sin(i*(pi/180)) + L2 * sin((i+j)*(pi/180));
        c = c + 1;
    end
end

%plotting graph
plot(Xg,Yg,'k.');
title("Map of Possible Gripper Positions") 
xlabel("x-coordinate of gripper")
ylabel("y-coordinate of gripper")