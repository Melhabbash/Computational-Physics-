*       Home work #2
*       Question (3)
*       Write a program to find the root of a function using
*       initial Guess X0

*       (iii)f(x)=cos(x)   X0=1

        func(X0)=cos(X0)
        TOLX=1.E-03
        X0=1
        Dx=0.01
        Iter=0
        Print*,'I    root     '
10      continue
        Iter=Iter+1
        X0=X0+Dx
        write(*,*)Iter,X0
        If(Abs(func(X0)).GT.TOLX) goto 10
        stop
        end

