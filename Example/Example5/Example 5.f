*       This program calculate the factorial of number n

        write(*,*)'Enter your number to calculate factorial'
        Read(*,*)N
        counter=N
        factorial=1
10      factorial=factorial*counter
        counter=counter-1
        if(counter.EQ.1)   go to 20
        go to 10
20      write(*,*)N,factorial
        stop
        end
