*       Home work #1
*       Question (4)
*       For a set of datd x1,x2,x3,...,xn . Write a program
*       calculate the sum , the sum square , mean , variance
*       and standard deviation ?

        integer counter

        dimension x(9)
100     format(f 10.5)
        sum=0.0

        do 10 counter=1,9
        print*,'Enter your data'
        read(*,*)x(counter)
        sum=sum+x(counter)
10      continue

        mean=sum/(9)
        pre_variance=0.0

        do 20 counter=1,9
*       pre_variance=(n-1)*S^2  , where S^2 is variance
        pre_variance=pre_variance+(x(counter)-mean)*(x(counter)-mean)
20      continue
        variance=pre_variance/(8)
        standard_deviation=sqrt(variance)

        write(*,*)'The sum of your data is '
        write(*,100)sum
        write(*,*)'The mean of your data is '
        write(*,*)mean
        write(*,*)'The variance of your data is '
        write(*,100)variance
        write(*,*)'The standard deviation of your data is '
        write(*,100)standard_deviation

        stop
        end


