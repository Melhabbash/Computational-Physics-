*      Home work (1)
*      Question (5)

*      Given x,y,N, write a fortran program to compute:
*      1/x +1/(x+y) +1/(x+2y) +1/(x+3y) +..+1/(x+Ny)

       integer counter
       real Z
       z=0.0
       print*, 'Enter the first variable X'
       read(*,*)x
       print*, 'Enter the second variable y'
       read(*,*)y
       print*, 'Enter the third variable N'
       read(*,*)n
       
       do 10 counter=0,n
       Z=Z+ 1/(x+counter*y)
10     continue
       write(*,*)z
       stop
       end

