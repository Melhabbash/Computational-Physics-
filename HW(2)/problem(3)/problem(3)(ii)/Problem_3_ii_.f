*       Home work #2
*       Question (3)
*       Write a program to find the root of a function using
*       initial Guess X0

*       (ii)f(x)=x^8   X0=1

        func(X0)=X0**8
        TOLX=1.E-06
        X0=1
        Dx=0.05
        Iter=0
        Print*,'I    root     '
10      continue
        Iter=Iter+1
        X0=X0-Dx
        write(*,*)Iter,X0
        If(Abs((func(X0))**(0.125)).GT.TOLX) goto 10
        stop
        end

