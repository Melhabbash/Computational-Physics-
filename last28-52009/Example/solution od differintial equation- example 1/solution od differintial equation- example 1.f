*       This program calculate the solution for the
*       diferintial equation:
*       dy/dx=-xy<    y(x=0)=1
*       the solution is : y= exp(-x^2/2)

        Func(x,y)=-x*y
20      write(*,*)'Enter step size (.le.0 to stop )'
        Read(*,*)H
        if(H.LE.0)stop
        Nstep=3.0/H
        Y=1.0
        do 10 IX=0,Nstep-1
        X=IX*H
        Y=Y+H*func(x,y)
        Diff=exp(-0.5*(x+H)**2)-y
        Write(*,*)IX,X+H,Y,Diff
10      continue
        go to 20
        End
        
        

