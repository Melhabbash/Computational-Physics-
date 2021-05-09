*       This an example of finding roots ofth function
*       f(x)=x^2-5
*       page 11

        func(x)=x*x-5
        TOLX=1.E-06
        x=1
        Fold=func(x)
        Dx=0.5
        Iter=0
10      continue
        Iter=Iter+1
        x=x+Dx
        Print*,Iter,x,sqrt(5.)-x
        If((fold*func(x)).LT.0)then
        x=x-Dx
        Dx=Dx/2
        End If
        If(Abs(Dx).GT.TOLX) goto 10
        stop
        end
        
