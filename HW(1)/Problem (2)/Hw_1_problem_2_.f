*       Home work #1

*       Question (2)
*       Write a FORTRAN program which computes the roots of
*       the following quadratic equation for a given set of
*       coeffficiants A,B.C. (D= b^2-4*a*c is not negative)
*       ax^2+b*x+c=0.

10      print *, ' a*x^2+b*x+c=0'
        Print *, ' enter the value of a,b,c'
        read(*,*) a,b,c
        if(b*b-4*a*c .lt.0) goto 10
        x1=(-b+ sqrt(b*b-4*a*c))/(2*a)
        x2=(-b- sqrt(b*b-4*a*c))/(2*a)
        
        print*, 'the root of the equation is '

        print*, x1,x2
        
        stop
        end
        

