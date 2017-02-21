% 这个程序用来画90°大铰链的折弯轨迹
clear 
close
L=200;
x=0;
y=0;
for theta=1:1:180
THETA=theta*pi/180;
r=L/THETA;
Ox=x;
Oy=y+r;
Bx=x+r*sin(THETA);
By=y+r-r*cos(THETA);


plot(Ox,Oy,'k*');
hold on
plot(Bx,By,'r.');
hold on
if theta==90
    plot(Bx,By,'r*')
end


if theta/10==fix(theta/10)
for tt=0:THETA/100:THETA
    tx=x+r*sin(tt);
    ty=y+r-r*cos(tt);
    plot(tx,ty,'g.')
    
    if tt==(THETA-0)/2
            plot(tx,ty,'r*')
    end
end
end

end
axis equal
