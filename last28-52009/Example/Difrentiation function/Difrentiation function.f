*       write program to find serivstive of f(x)=sin(x)
*       for x=1 , usimg 3 point method

 10     Read(*,*)X
        write(*,*)'Enter the value of H'
        Read(*,*)H
        If(H.LE.0)stop
        fbrime=(sin(x+H)-sin(x-H))/2*h
        exact=cos(x)
        Error=exact-fbrime
        write(*,*)H,Error,fbrime,exact
        Go to 10
*        Stop
        End
        
