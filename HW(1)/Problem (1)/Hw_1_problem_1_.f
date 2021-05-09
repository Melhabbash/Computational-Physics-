*       Home work #1
*       Question (1)
*       Suppose a,b,c are the following function of x:
*       a=x^3-8x^2+4 , b=tanx + sin2x , c=e^(7x+5)
*       write a program which reads x and prints x,a,b,c.

        Print*, ' Enter the value of x'
        read (*,*)x
        a=x*x*x-8*x*x+4
        b=tan(x) + sin(2*x)
        c=exp(7*x+5)
        
        print*, x,a,b,c
        
        Stop
        End
        
