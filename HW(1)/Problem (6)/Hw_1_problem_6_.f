*      Home work (1)
*      Question (6)

*      a class of 120 students takes an exam on which
*      the score is between 0 and 100 , write a fortran
*      program which calculate :
*      (a)the average score
*      (b)the number of student failed score below 60
*      (c)the number of student of perfect scores 100


       integer counter
       failed=0
       perfect=0
       average=0
       print*,'Enter the Student number'
       read(*,*)n
       do 10 counter =1,n
       print*,'Enter the Student Score'
       read(*,*)score
       if(score.lt.60) failed = (failed +1)
       if(score.eq.100) perfect=perfect+1
       average=average+score
10     continue
       average=average/N
       print*, 'the average score =',average
       print*, 'number of student failed =',failed
       print*, 'number of student of perfect score',perfect
       stop
       End


