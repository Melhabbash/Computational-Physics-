*       The integral of function using T.R

        Write(*,*)'Enter N even'
30      Read(*,*)N
        if(N.LT.2) stop
        H=1.0/N
        sum =exp(0.0)
        Do 10 I=1,N-1
        X=I*H
10      sum=sum+2*exp(x)
        Xint=(exp(1.0)+sum)*H/2.0
        exactI=exp(1.0)-1
        Error=exact-Xint
        write(*,*)N,Xint,exactI,error
        go to 30
*        stop
        end
