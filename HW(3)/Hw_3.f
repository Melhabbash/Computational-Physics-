*       This program calculate the solution for the
*       diferintial equation:
*       dy/dx=-xy<    y(x=0)=1
*       the solution is : y= exp(-x^2/2)

        ax(Vx,Vy)=-0.5*p*Cd*A*sqrt((Vx**2+Vy**2))*Vx/bm
        ay(Vx,Vy)=-0.5*p*Cd*A*sqrt((Vx**2+Vy**2))*Vy/bm-g

20      write(*,*)'Enter step size (.le.0 to stop )'
        Read(*,*)H
        if(H.LE.0)stop
*        Nstep=5000/H

        write(*,*)'Enter the ball mass Kg'
        Read(*,*)bm
        write(*,*)'Enter the initial velocity Vx,Vy'
        Read(*,*)Vx,Vy
        write(*,*)'Enter the air resistance'
        Read(*,*)p
        write(*,*)'Enter the drag coefficient'
        Read(*,*)Cd
        write(*,*)'Enter the cross section area'
        Read(*,*)A
         Nstep=4
        x=0
        y=0
        
        do 10 it=0,Nstep-1
        Vxh=h*ax(Vx,Vy)+Vx
        Vyh=h*ay(Vx,Vy)+Vy
        Xh=x+Vx*h-0.5*ax(Vx,Vy)*h**2
        yh=y+Vy*h-0.5*ay(Vx,Vy)*h**2
        
        Vx=Vxh
        Vy=Vyh

*        Diff=exp(-0.5*(x+H)**2)-y
        Write(*,*)it,VXh,Vyh,Xh,Yh
10      continue
        go to 20
        End



