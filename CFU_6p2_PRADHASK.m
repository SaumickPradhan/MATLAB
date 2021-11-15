% Assignment: CFU 6.2
% File Name: CFU_6p2_PRADHASK.m
% Date: 18 February 2021
% By: Saumick Pradhan
% 
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE
% Saumick Pradhan
%
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I
% have a general understanding of all aspects of its
% development and execution.
% A BRIEF DESCRIPTION OF WHAT THE SCRIPT OR FUNCTION DOES
% The function calculates the sum of the N+1 terms and 
% the absolute value of the difference between 
% the sum of the N+1 terms and the value that the sum converges 
% to for an infinite number of terms, 1/(1 – r).
function [sumTerms, Difference] = CFU_6p2_PRADHASK(r, N)
sumTerms = 0;
Difference = 0;
if (abs(r) >= 1)
    error("The series will not converge for your r value.")
end

if isinteger(N) == 0 && N < 0
    error("The value of N should be an integer and should not be negative.")
end
    
for i = 0:N
    sumTerms = sumTerms + (r ^ i); 
    Difference = sumTerms - (1 / (1 - r));
end
end

