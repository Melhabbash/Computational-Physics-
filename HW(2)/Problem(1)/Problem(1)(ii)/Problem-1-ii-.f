*       Home work #2
*       Question (1)
*       Write a Fortran program to calculate and find
*       error% between exact derivatives and numerical
*       derivatives of the following function using
*       all methods (forward , backward , 3-point method,
*       5-point method)

*       (ii)f(x)=x^6-cos(x)  at x=2

        write(*,*)'f(x)=X^6-cos(x)'
        write(*,*)'exact (df(x)/dx)= 6*X^5+sin(x)'
        write(*,*)'Enter the value of X ,to calculate df(x)/dx'
        Read(*,*)X
10      write(*,*)'Enter the value of H'
        Read(*,*)h
        If(H.LE.0)stop
        exact= 6*x**5+sin(x)
        fx=x**6-cos(x)
        fx1h_forward=(x+h)**6-cos(x+h)
        fx2h_forward=(x+2*h)**6-cos(x+2*h)
        fx1h_backward=(x-h)**6-cos(x-h)
        fx2h_backward=(x-2*h)**6-cos(x-2*h)

*       Forward Difference Deivative
        fbrime_forward=(fx1h_forward-fx)/h

*       Backward Difference Deivative
        fbrime_backward=(fx-fx1h_backward)/h

*       3-point Difference Deivative
        fbrime_3_point=(fx1h_forward-fx1h_backward)/(2*h)

*       5-point Difference Deivative
        fbrime_5_point_1= fx2h_backward -8*fx1h_backward
        fbrime_5_point_2=8*fx1h_forward-fx2h_forward
        fbrime_5_point=(fbrime_5_point_1 + fbrime_5_point_2)/(12*h)

        Error_forward=abs(exact-fbrime_forward)
        Error_backward=abs(exact-fbrime_backward)
        Error_3_point=abs(exact-fbrime_3_point)
        Error_5_point=abs(exact-fbrime_5_point)
20      format(4f 12.6)
        write(*,*)'   H           Error       fbrime      exact'
        write(*,20)H,Error_forward,fbrime_forward,exact
        write(*,20)H,Error_backward,fbrime_backward,exact
        write(*,20)H,Error_3_point,fbrime_3_point,exact
        write(*,20)H,Error_5_point,fbrime_5_point,exact
        Go to 10
*        Stop
        End
