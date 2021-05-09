*       Compute The Average Score For Each Student
          Read(*,*)N
100       Read(*,*)S1,S2,S3,S4
          Sum=S1+S2+S3+S4
          Average=Sum/4
          write(*,*) S1,S2,S3,S4, Average
          N=N-1
          If(N.eq.0)go to 10
          Go to 100
10        Stop
          End
