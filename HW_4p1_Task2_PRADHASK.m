% HW 4.1 Task 2 
%File: HW_4p1_Task1_PRADHASK.m
% Date: 02/10/2021
% By: (If Team Assignment, include all members info)
%     Saumick Pradhan
%
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Saumick Pradhan
% Padovan sequence calculator

clc();clear();

% Inputs
T = input("Input terms: ");

%check input
while (T<1)
    
    fprintf("\n");
    
    if (T<1)
        fprintf("\nInput for the Number of terms is Invalid. Input greater than 1.")
        T = input("Input terms: ");
    end
    
end


Pad = zeros;
if (T >= 1)
    Pad(1) = 1;
end

if (T >= 2)
    Pad(2) = 1;
end

if (T >= 3)
    Pad(3) = 1;
end

if (T >= 4)
    for i = 4 : T
        Pad(i)=Pad(i-2)+Pad(i-3);
    end
end

%Displays the array that has Padovan sequence saved in it
fprintf("\nThe padovan sequence for %.0f term(s) is as follows :\n", T);
disp(Pad);