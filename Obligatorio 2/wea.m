## Copyright (C) 2020 Gabriel
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} wea (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Gabriel <Gabriel@DESKTOP-KUN6LK1>
## Created: 2020-11-12
function  f = temperaturaF(t,z)
  F(z) = 1000*sqrt(abs(1-t));
  f = F;
endfunction

function cosito = wea(u)


  h=0.1;
  
  x = 0;
  t =[0:1:25]
  z= 1;
  
  
  
  while (x<=1)
    u_0(z)=1000*x*(1-x)*(1+(3/2)*(x^3));
    x = x+h;
    B(z,:) = 1000*sqrt(abs(1-t));
      
    
    
    z++;
    endwhile
  A = gallery ("tridiag",(z-1));
  ##u_0
  B
  cosito = (1/h)*A*u + B(:,t+1);
  
  
  
 endfunction 
  
  ##u = lsode(@wea,u_0,t);
  ##fun = @(u,t) (1/h)*A*u + B;
  ##t =[0:1:25];
  
  ##u = lsode(fun,u_0,t);
   
  ## plot(t,T);


