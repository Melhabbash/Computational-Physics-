
% a projectile motion  Problem
% A ball of mass (m)= 0.200Kg , with cross section area (A) =3.5*10³ m² 
% Moving with initial velocity (Vx)=30.0  m/s  ,and (Vy)= 24.0  m/s 
% and initial position  (X)= 0.0 meter  and, (Vy)= 0.0  meter
% with air resistance (p)= 1.2 Kg/m³ 
% and drag coefficient (Cd)= 0  or 0.25 
% Earth Gravity (g)= 9.8  m/s^2
% Solving this problem using Simple (Euler)method

clear all;
clc;
% Initialization of Variabels
g=9.8;
p=1.2;
m=0.2;
h=0.01;
N=30/h;
A=3.5e-3;


Cd0=0;
Vx0(1)=30;
Vy0(1)=24;
ax0(1)=0;
ay0(1)=0;
X0(1)=0;
Y0(1)=0;
tfinal0=0;
maximum_hight0=0;
Range0=0;


for t=1:1:N
    ax0(t)=-0.5*p*Cd0*A*sqrt((Vx0(t)^2+Vy0(t)^2))*Vx0(t)/m;
    ay0(t)=-0.5*p*Cd0*A*sqrt((Vx0(t)^2+Vy0(t)^2))*Vy0(t)/m-g;
    
    Vx0(t+1)=h*ax0(t)+Vx0(t);
    Vy0(t+1)=h*ay0(t)+Vy0(t);
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
ax(1)=0;
ay(1)=0;
X(1)=0;
Y(1)=0;
tfinal=0;
maximum_hight=0;
Range=0;

for t=1:1:N
    ax(t)=-0.5*p*Cd*A*sqrt((Vx(t)^2+Vy(t)^2))*Vx(t)/m;
    ay(t)=-0.5*p*Cd*A*sqrt((Vx(t)^2+Vy(t)^2))*Vy(t)/m-g;
    
    Vx(t+1)=h*ax(t)+Vx(t);
    Vy(t+1)=h*ay(t)+Vy(t);
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



