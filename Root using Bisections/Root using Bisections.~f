*       This program :calculate Roots of
*       f(x)=exp(x)*ln(x)-x*x
*       by using Bisections

        Dl=1.0E-06
        A=1.0
        B=2.0
        Dx=B-A
        Istep=0
        Do 100while(abs(Dx).GT.Dl)
        X0=(A+B)/2.0
        If(f(A)*f(x0).LT.0)then
        B=x0
        Dx=B-A
        Else
        A=x0
        Dx=B-A
        End If
        Istep=Istep+1
100     End do
        Write(6,999)Istep,x0,Dx
        Stop
999     Format(I4,2F16.8)
        End
        function f(x)
        f=exp(x)*ALOG(x)-x*x
        Return
        End

        
        
