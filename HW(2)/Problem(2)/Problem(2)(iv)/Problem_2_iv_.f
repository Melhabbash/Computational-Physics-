*       Home work #2
*       Question (2)
*       write a Fortran program to find the numerical integration
*       of the following function and find error:

*       (iv) f(x)=sin(x)/(x-2)  from (0,infinity)

        func(x)=sin(x)/(x-2)
        write(*,*)'f(x)=sin(x)/(x-2)'
        write(*,*)'exact integral(f(x))=sin(2)*int(cos(2-x))'
        write(*,*)'                     -cos(2)*int(sin(2-x))'
        write(*,*)'Enter Number of parts (Must be even)'
        Read(*,*)n
        if(n.LT.2) stop
        if(mod(n,2).ne.0) n=n+1
        write(*,*)'Enter the initial value of integration interval'
        read(*,*)Xi
        write(*,*)'Enter the final value of integration interval'
        read(*,*)Xf
        a=2
        exact=-sin(a)*(sin(2-xf)-sin(2-xi))-cos(a)*(cos(2-xf)-cos(2-xi))
        h=(Xf-Xi)/n
        x=xi
        sum=0.0

        Do 10 I=1,N-1
        sum=sum+func(x)
10       x=x+h
        rectangles=sum*h
        trapazodial=0.5*h*(func(xi)+2.0*sum+func(xf))
        Simp=(3*h/8)*(func(xi)+3*func(xi+h)+3*func(xi+2*h)+func(xi+3*h))
        Bode=7*func(xi)+7*func(xi+4*h)+12*func(xi+2*h)
        Bode=(2*h/45)*(bode+32*func(xi+h)+32*func(xi+3*h))
        error_rectangles=abs(abs(exact)-rectangles)
        error_trapazodial=abs(abs(exact)-trapazodial)
        error_Simp=abs(abs(exact)-Simp)
        error_Bode=abs(abs(exact)-Bode)
20      format(4f 12.4)
        write(*,*)' Xi=',xi
        write(*,*)'Xf=',xf
        write(*,*)'H=',h
        write(*,*) '  '
        write(*,*)'   Exact      Numerical-    '
        write(*,*)'  Integral     Integral     error  '
        write(*,*)'------------*------------*------------'
        write(*,20)exact ,rectangles ,error_rectangles
        write(*,20)exact ,trapazodial ,error_trapazodial
        write(*,20)exact ,Simp ,error_Simp
        write(*,20)exact ,Bode ,error_Bode

        end






