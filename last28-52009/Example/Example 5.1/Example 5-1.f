*       Example 5.1
*	   write a fortran program to solve for Pi(r)numerically
*	   and compare with the analytical solution ?
*	   1 * d  { r^2 d Phi(r)}
*	  ---  -- {-------------} = -4*pi*rho
*	   r   dr {             }

*	   Phi(r)= r^-1*Phi(r)
*	   d^2 { Phi(r)}
*	   -------------  = -4*pi*rho
*        dr^2

        dimension PHI(0:200)
        exact(R)=1.0-(R+2)*Exp(-R)/2
        source(R)=-R*exp(-R)/2
        H=0.1
        Nstep=20./H
        const=H**2/12
        Sm=0.
        Sz=source(H)
        PHI(0)=0
        PHI(1)=exact(H)
        do 10 IR=1,Nstep-1
        R=(IR+1)*H
        Sp=source(R)
        PHI(IR+1)=2*Phi(IR)-PHI(IR-1)+ Const*(Sp+10.0*Sz+Sm)
        Sm=Sz
        Sz=Sp
        Diff=Exact(R)-PHi(IR)
        Print*,R,Exact(R),Phi(IR),Diff
10      continue
        stop
        end
