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

clc();clear();

%ake inputs
U = input("Input units of velocity ('mps'/'mph'): ", 's');
V = input("Input velocity: ");

%Check inputs
while ((U~="mps" && U~="mph" && U~="MPS" && U~="MPH") || V<0)
    
    fprintf("\n");
    
    if (U~="mps" && U~="mph" && U~="MPS" && U~="MPH")
        U = input("Input units of velocity ('mps'/'mph'): ", 's');
    end
    
    if (V<0)
       V = input("Input velocity: ");
    end
    
end

% convert v from mph to mps
if(U=="mph" || U=="MPH")
    V = V * 0.44704; 
end
    
%constants  
Rho = 1.23; %kg/m^3
A = 185.3; %m^2
Drag = 0.94; %Unitless
Take_Off_Weight = 525000; %N

%Lift
Lift = 0.5 * Rho * (V^2) * A * Drag; %Unit: N
fprintf("\nThe value of Lift is %.2f N \n", Lift);

%O/P Message
if (Lift > Take_Off_Weight)
    fprintf("\nThe velocity is sufficient for take-off.\n\n")
    
elseif (Lift < Take_Off_Weight)
    fprintf("\nThe velocity is not sufficient for take-off.\n\n")
    
else
    fprintf("\nThe lift is equal to take-off weight.\n\n")
    
end    
   
