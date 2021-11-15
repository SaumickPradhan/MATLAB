% Assignment: CFU 6.2
% File Name: CFU_6p2_TEAM274.m
% Date: 18 February 2021
% By: Saumick, Hugo, Thomas, Jacob
% 
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE
% Saumick, Hugo, Thomas, Jacob
%
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I
% have a general understanding of all aspects of its
% development and execution.
% A BRIEF DESCRIPTION OF WHAT THE SCRIPT OR FUNCTION DOES
% function TO calculatesum of the N+1 terms and 
% the absolute value of difference between 
% the sum  and the value that the sum converges 
% to for an infinite number of terms.

function[sumterms,diff]=CFU_6p2_TEAM274(r,N)
sumterms=0;
diff=0;
if abs(r)>=1
     error("The series will not converge for your r value")
end
if N>0 && isinteger(N)==0
    for k=0:N
        sumterms=sumterms+(r^k);
    end
    diff=sumterms-(1/(1-r));
    diff=abs(diff);
else
    error("The series will not converge for your r value")
end
    