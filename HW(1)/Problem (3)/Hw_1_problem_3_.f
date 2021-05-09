*       Home work #1

*       Question (3)
*       Draw flow chart and write a FORTRAN program which
*       calculates (to five decimal places):
*       a) 1/1 +1/3 +1/5 +1/7 +1/21
*       b) 2/1 * 4/3 * 6/5 * 22/21

        write(*,*) ' write any number to start'
        read(*,*)a
        a=a/a
        b=a/1+a/3+a/5+a/7+a/21
        c=(2.0/1.0)*(4.0/3.0)*(6.0/5.0)*(22.0/21.0)
        write(*,*) ' (1/1 +1/3 +1/5 +1/7 +1/21) equals '
        write(*,10)b
        write(*,*)
        write(*,*) ' (2/1 * 4/3 * 6/5  * 22/21) equals '
        write(*,10)c
10      format(f 8.5)

        stop
        end



