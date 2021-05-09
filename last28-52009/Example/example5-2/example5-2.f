*       Example 5.2

*        Writ a program to find the lowest eigen values
*        of stretched string by the shooting method
*        described above
*	  d^2 { Phi(r)}
*	 -------------  = -K^2*Phi  , Phi(x=0)=Phi(x=1)=0
*         dx^2



         
         real K
         K=1
         DK=1.0
         TOLK=1.E-05
         Call INTGRT(K,PHIP)
         PHIOLD=PHIP
10       continue
         K=K+DK
         Call INTGRT(K,PHIP)
         If (PHIP*PHIOLD.LT.0)Then
         K=K-DK
         DK=DK/2
         End If
         If(ABS(DK).GT.TOLK)goto 10
         Exact=4.0*ATAN(1.0)
         Print*,'eigenvalue, error=',K,Exact-K
         stop
          end
         Subroutine INTGRT(K,PHIP)
         Real K
         DATA Nstep/100/
         H=1.0/Nstep
         Phim=0.0
         Phiz=0.01
         const=(k*H)**2/12
         do 100 Ix=1,Nstep-1
         Phip=2*(1.0-5.0*const)*Phiz-(1+const)*Phim
         phip=phip/(1+const)
         Phim=Phiz
         Phiz=Phip
100      continue
         Print*,K,PHIP
         return
         end

         
