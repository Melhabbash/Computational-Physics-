*       This program calculate the solution for the
*       diferintial equation:
*       dy/dx=-y ,    y(x=0)=1
*       the solution is : y= exp(-x)

        Print*,'Enter the value of step size )(.le. 0to stop)'
10      Read(*,*)H
        if(H.LE.0)stop
        YMINUS=1
        YZERO=1.0-H+H**2/2
        Nstep=6.0/H
        do 20 IX=2,Nstep
        X=IX*H
        YPLUS=YMINUS-2*H*YZERO
        YMINUS=YZERO
        YZERO=YPLUS
        Exact=exp(-x)
        Write(*,*)X,Exact,Exact-YZERO
20      continue
        go to 10
        End

