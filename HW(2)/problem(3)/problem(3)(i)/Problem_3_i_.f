*       Home work #2
*       Question (3)
*       Write a program to find the root of a function using
*       initial Guess X0

*       (i)f(x)=tan(x)   X0=2

        func(X0)=tan(X0)
        TOLX=1.E-06
        X0=2
        Dx=0.05
        Iter=0
        Print*,'I    root     '
10      continue
        Iter=Iter+1
        X0=X0-Dx
        write(*,*)Iter,X0
        If(Abs(atan(func(X0))).GT.TOLX) goto 10
        stop
        end

