function [Fr,angr]=Forces(mag1,ang1,mag2,ang2,units)
if mag1<0 || mag2<0 || (units~= "degrees" && units~= "radians")
    error("Invalid input");
end
if units=="degrees"
    ang1 = deg2rad(ang1);
    ang2 = deg2rad(ang2);
end
    

Fx1=mag1*cos(ang1);
Fx2=mag2*cos(ang2);
Fy1=mag1*sin(ang1);
Fy2=mag2*sin(ang2);
Frx=Fx1+Fx2;
Fry=Fy1+Fy2;
Fr=sqrt((Frx^2)+(Fry^2));
if Frx >= 0
    angr= atan(Fry/Frx); 
else
    angr= atan(Fry/Frx)+pi;
end
angr=rad2deg(angr);

 
      
    