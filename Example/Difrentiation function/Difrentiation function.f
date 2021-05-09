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
        
