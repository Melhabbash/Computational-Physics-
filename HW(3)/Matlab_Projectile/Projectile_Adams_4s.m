
% a projectile motion  Problem
% A ball of mass (m)= 0.200Kg , with cross section area (A) =3.5*10³ m² 
% Moving with initial velocity (Vx)=30.0  m/s  ,and (Vy)= 24.0  m/s 
% and initial position  (X)= 0.0 meter  and, (Vy)= 0.0  meter
% with air resistance (p)= 1.2 Kg/m³ 
% and drag coefficient (Cd)= 0  or 0.25 
% Earth Gravity (g)= 9.8  m/s^2
% Solving this problem using Adams-Bashforth (four-step)method

clear all;
clc;
% Initialization of Variabels
g=9.8;
p=1.2;
m=0.2;
h=0.01;
N=50/h;
A=3.5e-3;


Cd0=0;
Vx0(1)=30;
Vy0(1)=24;
ax0(1)=-0.5*p*Cd0*A*sqrt((Vx0(1)^2+Vy0(1)^2))*Vx0(1)/m;
ay0(1)=-0.5*p*Cd0*A*sqrt((Vx0(1)^2+Vy0(1)^2))*Vy0(1)/m-g;
Vx0(2)=Vx0(1)+h*(3/2)*ax0(1);
Vy0(2)=Vy0(1)+h*(3/2)*ay0(1);

ax0(2)=-0.5*p*Cd0*A*sqrt((Vx0(2)^2+Vy0(2)^2))*Vx0(2)/m;
ay0(2)=-0.5*p*Cd0*A*sqrt((Vx0(2)^2+Vy0(2)^2))*Vy0(2)/m-g;
Vx0(3)=Vx0(2)+h*(3/2)*ax0(2);
Vy0(3)=Vy0(2)+h*(3/2)*ay0(2);

ax0(3)=-0.5*p*Cd0*A*sqrt((Vx0(3)^2+Vy0(3)^2))*Vx0(3)/m;
ay0(3)=-0.5*p*Cd0*A*sqrt((Vx0(3)^2+Vy0(3)^2))*Vy0(3)/m-g;
Vx0(4)=Vx0(3)+h*(3/2)*ax0(3);
Vy0(4)=Vy0(3)+h*(3/2)*ay0(3);

ax0(4)=-0.5*p*Cd0*A*sqrt((Vx0(4)^2+Vy0(4)^2))*Vx0(4)/m;
ay0(4)=-0.5*p*Cd0*A*sqrt((Vx0(4)^2+Vy0(4)^2))*Vy0(4)/m-g;

X0(1)=0;
Y0(1)=0;
X0(2)=X0(1)+Vx0(1)*h+0.5*ax0(1)*h^2;
Y0(2)=Y0(1)+Vy0(1)*h+0.5*ay0(1)*h^2;
X0(3)=X0(2)+Vx0(2)*h+0.5*ax0(2)*h^2;
Y0(3)=Y0(2)+Vy0(2)*h+0.5*ay0(2)*h^2;
X0(4)=X0(3)+Vx0(3)*h+0.5*ax0(3)*h^2;
Y0(4)=Y0(3)+Vy0(3)*h+0.5*ay0(3)*h^2;
tfinal0=0;
maximum_hight0=0;
Range0=0;


for t=4:1:N
    ax0(t)=-0.5*p*Cd0*A*sqrt((Vx0(t)^2+Vy0(t)^2))*Vx0(t)/m;
    ay0(t)=-0.5*p*Cd0*A*sqrt((Vx0(t)^2+Vy0(t)^2))*Vy0(t)/m-g; 
    Vx0(t+1)=Vx0(t)+(h/24)*(55*ax0(t)-59*ax0(t-1)+37*ax0(t-2)-9*ax0(t-3));
    Vy0(t+1)=Vy0(t)+(h/24)*(55*ay0(t)-59*ay0(t-1)+37*ay0(t-2)-9*ay0(t-3));
    X0(t+1)=X0(t)+Vx0(t)*h+0.5*ax0(t)*h^2;
    Y0(t+1)=Y0(t)+Vy0(t)*h+0.5*ay0(t)*h^2;

    if Y0(t+1)>0
     tfinal0=t+1;
     Range0=X0(t+1);
    end
    if Y0(t+1)>Y0(t)
        maximum_hight0=Y0(t+1);
    end
end

%Theoritical Result for Cd=0
flight_time_theoritic=2*Vy0(1)/(0.5*p*Cd0*A*sqrt((Vx0(1)^2+Vy0(1)^2))*Vy0(1)/m+g)
maximum_hight_theoritic=Vy0(1)^2/(2*(0.5*p*Cd0*A*sqrt((Vx0(1)^2+Vy0(1)^2))*Vy0(1)/m+g))
Range_theoritic=Vx0(1)*flight_time_theoritic+0.5*ax0(tfinal0)*flight_time_theoritic^2

%Calculated Result for Cd=0
flight_time_computizes=tfinal0*h
maximum_hight_computized=maximum_hight0*1
Range_computized=Range0

Cd=0.25
Vx(1)=30;
Vy(1)=24;
ax(1)=-0.5*p*Cd*A*sqrt((Vx(1)^2+Vy(1)^2))*Vx(1)/m;
ay(1)=-0.5*p*Cd*A*sqrt((Vx(1)^2+Vy(1)^2))*Vy(1)/m-g;
Vx(2)=Vx(1)+h*(3/2)*ax(1);
Vy(2)=Vy(1)+h*(3/2)*ay(1);

ax(2)=-0.5*p*Cd*A*sqrt((Vx(2)^2+Vy(2)^2))*Vx(2)/m;
ay(2)=-0.5*p*Cd*A*sqrt((Vx(2)^2+Vy(2)^2))*Vy(2)/m-g;
Vx(3)=Vx(2)+h*(3/2)*ax(2);
Vy(3)=Vy(2)+h*(3/2)*ay(2);

ax(3)=-0.5*p*Cd*A*sqrt((Vx(3)^2+Vy(3)^2))*Vx(3)/m;
ay(3)=-0.5*p*Cd*A*sqrt((Vx(3)^2+Vy(3)^2))*Vy(3)/m-g;
Vx(4)=Vx(3)+h*(3/2)*ax(3);
Vy(4)=Vy(3)+h*(3/2)*ay(3);

ax(4)=-0.5*p*Cd*A*sqrt((Vx(4)^2+Vy(4)^2))*Vx(4)/m;
ay(4)=-0.5*p*Cd*A*sqrt((Vx(4)^2+Vy(4)^2))*Vy(4)/m-g;


X(1)=0;
Y(1)=0;
X(2)=X(1)+Vx(1)*h+0.5*ax(1)*h^2;
Y(2)=Y(1)+Vy(1)*h+0.5*ay(1)*h^2;
X(3)=X(2)+Vx(2)*h+0.5*ax(2)*h^2;
Y(3)=Y(2)+Vy(2)*h+0.5*ay(2)*h^2;
X(4)=X(3)+Vx(3)*h+0.5*ax(3)*h^2;
Y(4)=Y(3)+Vy(3)*h+0.5*ay(3)*h^2;
tfinal=0;
maximum_hight=0;
Range=0;


for t=4:1:N
    ax(t)=-0.5*p*Cd*A*sqrt((Vx(t)^2+Vy(t)^2))*Vx(t)/m;
    ay(t)=-0.5*p*Cd*A*sqrt((Vx(t)^2+Vy(t)^2))*Vy(t)/m-g; 
    Vx(t+1)=Vx(t)+(h/24)*(55*ax(t)-59*ax(t-1)+37*ax(t-2)-9*ax(t-3));
    Vy(t+1)=Vy(t)+(h/24)*(55*ay(t)-59*ay(t-1)+37*ay(t-2)-9*ay(t-3));
    X(t+1)=X(t)+Vx(t)*h+0.5*ax(t)*h^2;
    Y(t+1)=Y(t)+Vy(t)*h+0.5*ay(t)*h^2;

    if Y(t+1)>0
     tfinal=t+1;
     Range=X(t+1);
    end
    if Y(t+1)>Y(t)
        maximum_hight=Y(t+1);
    end
end

%Theoritical Result for Cd=0.25
flight_time_theoritic=2*Vy(1)/(0.5*p*Cd*A*sqrt((Vx(1)^2+Vy(1)^2))*Vy(1)/m+g)
maximum_hight_theoritic=Vy(1)^2/(2*(0.5*p*Cd*A*sqrt((Vx(1)^2+Vy(1)^2))*Vy(1)/m+g))
Range_theoritic=Vx(1)*flight_time_theoritic+0.5*ax(tfinal)*flight_time_theoritic^2

%Calculated Result for Cd=0.25
flight_time_computized=tfinal*h
maximum_hight_computized=maximum_hight*1
Range_computized=Range

plot(X0(1:tfinal0),Y0(1:tfinal0),'black'), hold on;
plot(X(1:tfinal),Y(1:tfinal),'black--');
grid;
legend('Cd =0', 'Cd =0.25');
xlabel('X (meter)')
ylabel('Y (meter)')

