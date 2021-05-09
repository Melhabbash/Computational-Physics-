% diff1.m contains the DE's called by whitedwarf.m.
% See whitedwarf.m for details.
%====================================================================
function set=diff1(rbar,sol)
set(1)= - sol(2)*sol(1)/( Gamma1( x(sol(1)) )*rbar^2 );
set(2)=rbar^2*sol(1);
set(3)=alpha( x(sol(1)) )*rbar^2;
set(4)=-sol(2)*sol(1)*rbar;

%******************End of diff1.m**************************************
