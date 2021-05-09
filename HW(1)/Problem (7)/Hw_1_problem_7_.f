
*      Home work (1)
*      Question (7)

*      Using the dimension write program to find the
*      largest number of hundred numbers stored using
*      dimension statement ?



       dimension x(10)
       integer counter
       
       do 10 counter=1,10
       print*,'Enter your number'
       read(*,*)x(counter)
10     continue


       largest=x(1)

       do 20 counter=1,10
       if(x(counter).gt.largest)largest=x(counter)
20     continue
       
       print *, 'the largest number is:',largest
       stop
       end
