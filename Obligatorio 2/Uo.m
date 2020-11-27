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
## @deftypefn {} {@var{retval} =} Uo (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Gabriel <Gabriel@DESKTOP-KUN6LK1>
## Created: 2020-11-17

##Funcion auxiliar para el lsode, simplemente genera el primer elemento de u.

function u_k = Uo(N)
 function valoru = u(x)  
    valoru=1000*x*(1-x)*(1+(3/2)*(x^3));
  endfunction
 
 h=1/N;
 z=1;
 
  for(z=1:z++:(N-1))
    u_k(z)=u(z*h);
    
  endfor
 endfunction
 
 

 