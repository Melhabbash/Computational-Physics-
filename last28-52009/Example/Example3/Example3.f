        Read (*,*) A1,B1,C1,A2,B2,C2
*11      Format(6F10.3)
        D=A1*B2-A2*B1
        X=(B2*C2-A2*C2)/D
        Y=(A1*C2-A2*C1)/D
        Write(*,*)A1,B1,C1,A2,B2,C2,X,Y
*12      Format(8F10.4)
        Stop
        End
