% HW 6.1_Task2
% File: HW_6p1_Task2_PRADHASK
% Date: 02/23/2021
% By: (If Team Assignment, include all members info)
%     Saumick Pradhan
%
% Section: 017
% Team: 274
%
% ELECTRONIC SIGNATURE (if team assignment, include all members info)
% Saumick Pradhan
%Calculate max heihght, time required to reach max height and impact time.
%Projectile height for each vale of time and a projectile graph to be made.

function[maxh,impt]=HW_6p1_Task2_PRADHASK(vo,ang,yo)
% check input conditions
if vo<0 || yo<0
    error("negative input(s)");
end
if ~(ang>=0 && ang<=90)
    error("launch angle not between 0 and 90");
end
% calculate time at maximum height
tmax=(vo*sind(ang))/9.81;
% calculate maximum height
maxh=(-0.5*9.81*(tmax^2))+ (vo*sind(ang)*tmax)+yo;
% calculate impact time
impt=tmax+((vo*sind(ang))/9.81)+((sqrt((vo*sind(ang))^2+(2*9.81*yo)))/9.81);
% calculate time array till impact time from 0
t=0:0.01:impt;
hold on
% find projectile height for each time and plot the points simulataneously 
for i=1:length(t)
    projH(i)=(-0.5*(9.81)*(t(i)^2))+(vo*sind(ang)*t(i))+yo;
    plot(t(i),projH(i),'o');
    title("Relationship between the projectile height and time");
    xlabel("Time (in s)");
    ylabel("Projectile height (in m)");
    xlim([0,impt]);
    ylim([0,maxh]);
    pause(0.1);
end
hold off
end