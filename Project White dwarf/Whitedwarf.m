%============================================================================
%                       Whitedwarf.m
%============================================================================

% 'whitedwarf.m', integrates the dimensionless 
% differential equations for  white dwarf structure and  internal and
% gravitational energies.
% These equations are in file 'diff1.m'. 

% In 'diff1.m', 'set' is the 4 column vectors: 
%       set(1)='d(rhobar)/d(rbar)', 
%       set(2)= 'd(mbar)/d(rbar)',
%       set(3)=d(ubar)/d(rbar), 
%       set(4)=d(dblubar)/d(rbar).
%       ubar is the scaled internal energy, and dblubar is the scaled 
%       gravitational energy. See Koonin... 

%'sol' (solution) is the 4 column vectors:  
%       sol(:,1)=rhobar;
%       sol(:,2)=mbar;
%       sol(:,3)=ubar;
%       sol(:,4)=dblubar;               

 
% The subroutine 'ode23' integrates from "rstart" to "rend". 
% and using the command "find" we determine the radius of the 
% star by choosing the max "rbar" where "rhobar" is non-zero 
% or negative.

% then rbar, rhobar, mbar, ubar and dblubar are rescaled to
% obtain, if desired, the values in solar units.
%=======================================================================
                        % Used for various density values

% for rhocbar=linspace(0.1,3,10);
%R=[];M=[];
%========================================================================
                        % Initialising.
rhobar=[];
mbar=[];
rbar=[]; 
ubar=[];
dblubar=[];
%=======================================================================                                                                                                                                                                 
                        % Central density.      
disp('The dimensionless central density must be specified.')
disp('A value of 1 corresponds to about a 0.5 solar mass star')
disp('for Ye=electrons/nucleus=0.5.')

rhocbar=input('Input dimensionless central density of white dwarf [1] >> '); 
 if isempty(rhocbar)  % default value
	rhocbar=1;
end

disp('Calculation started. Please wait ...')
%=======================================================================
 
Ye=0.5;                 % The number of electrons per nucleons.

%================ Normalising constants for radius, mass, density=======
%========================= and the two energies.========================
G=6.67*10^(-8);
R0=7.72*10^8*Ye;
M0=5.67*10^(33)*Ye^2;
rho0=9.79*10^5*Ye^(-1);
dblu0=(G*M0*M0)/(R0);
u0=dblu0;

%**************************************************************************
%============= This is to avoid the singularity in the centre,rbar=0.====
%============= Initial value for mass, mstart, at a region close to the =
%============= centre, rstart. We then determine mrstart from the =======
%============= equations below. =========================================

%============= The initial energies at the centre are==================== 
%============= both  zero.===============================================

%====See main body for the derivations of the following equations. ====== 



rstart=10^(-10);
mrstart=(1/3)*rhocbar*(rstart^3);
rhostart=rhocbar-(rhocbar*rhocbar*rstart*rstart)/( 6*Gamma1( x(rhocbar) ) );
ubarstart=0;
dblubarstart=0;

%***************************************************************************

rendlarge=5;                    % The outer limit of integration.
                                         


sol0=[ rhostart mrstart ubarstart dblubarstart]; % Initial conditions
                                                 % for the "trial"
                                                 % integration.

  

%######################## Begin  "trial" integration. #####################

[allrbar,sol]=ode23('diff1',rstart,rendlarge,sol0,1e-6);

%   The first values of  "allrhobar"  are the wanted values
%   of "rhobar" followed by "unwanted" values corresponding to  r>R=radius.
%   We expect that the  unwanted values start after "allrhobar=0"
%   so we need to truncate those values. See  below.
 

allrhobar=sol(:,1);                     % includes the first "rhobar"
                                        % of the white dwarf.


limit=min( find(allrhobar<0 ) );        % the limit of the radius,"rbar"
                                        % beyond which the first rhobar
                                        % is negative or zero.

%========================================================================



rend=allrbar(limit-1);                             % Redefine the limit of
                                                   % integration as the now
                                                   % known radius, 'rbar',                                                               
[rbar,sol]=ode23('diff1',rstart,rend,sol0,1e-6);   % and integrate again 
                                                   % only up to that radius
                                                   % for more  accuracy.


                        % END OF INTEGRATION.

%###########################################################################
                                                                                         rhobar=sol(:,1);       
                                         
mbar=sol(:,2);                   

ubar=sol(:,3);  
         
dblubar=sol(:,4);

%========================================================