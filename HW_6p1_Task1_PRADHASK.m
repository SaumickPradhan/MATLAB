% HW 6.1_Task2
% File: HW_6p1_Task1_PRADHASK
% Date: 02/23/2021
% By: (If Team Assignment, include all members info)
%     Saumick Pradhan
%
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Saumick Pradhan
% Calculate reaction rate and decomposition time and plot concentration vs
% time graph
function[K,DT]=HW_6p1_Task1_PRADHASK(FF, AE,T,IC)
% Calculate reaction rate k
K=FF*exp(-AE/(8.314*T));
% calculate decomposition time t
DT=5/K; 

% create time array from 0 to decomposition time
time=0:0.1:DT;
% create concentration array from time array
X=IC*(exp(-K*time));    
% plot concentration vs time graph
plot(time,X);
% giving titles and labels to axis
title("concentration (C) vs. time graph");
xlabel("time in s");
ylabel("concentration in M");
end
