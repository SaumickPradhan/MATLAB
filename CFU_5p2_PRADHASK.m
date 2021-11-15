% HW 4.1 Task 1
% File: HW_4p1_Task1_PRADHASK.m
% Date: 02/10/2021
% By: (If Team Assignment, include all members info)
%     Saumick Pradhan
%
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Saumick Pradhan
%Take velocity and unit, calculate Lift with appropriate message
clear; clc;

rng(3)
p1=0;
p2=0;
p3=0;
p4=0;

X = randi([-5,5],[3,4]);

Y = randi([-5,5],[3,4]);

Q = zeros(3,4);

for i=1:3
    for j=1:4
        if((X(i,j)>=0)&&(Y(i,j)>=0))
            Q(i,j)=1;
            p1=p1+1;
        elseif ((X(i,j)<0)&&(Y(i,j)>=0))
            Q(i,j)=2;
            p2=p2+1;
        elseif ((X(i,j)<0)&&(Y(i,j)<0))
            Q(i,j)=3;
            p3=p3+1;
        elseif ((X(i,j)>=0)&&(Y(i,j)<0))
            Q(i,j)=4;  
            p2=p2+1;
        end
    end
    
end
for i=1:3
    for j=1:4
        fprintf("%0.0f     ",Q(i,j))
    end
    fprintf("\n")
end
fprintf("points in 1st quadrant:  %0i   \n",p1)

fprintf("points in 2nd quadrant:  %0i   \n",p2)

fprintf("points in 3rd quadrant:  %0i   \n",p3)

fprintf("points in 4th quadrant:  %0i   \n",p4)
