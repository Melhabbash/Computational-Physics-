                        Read (*,*)A,B,C
*11                     Format(3F 10.1)
                        P=A+B+C
                        S=P/2.0
                        Area=sqrt(S*(S-A)*(S-B)*(S-C))
                        Write (*,*) A,B,C,P,Area
*12                      Format(3(f8.1,4x),F10.1,4x,F12.2)
                        Stop
                        END

