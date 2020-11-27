## Copyright (C) 2020 Ramiro
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
## @deftypefn {} {@var{retval} =} GivensH (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ramiro <Ramiro@RAMIRO-PC>
## Created: 2020-09-13

function retval = GivensH (H)
  [n,m]= size(H)
  c=[]
  s=[]
  for k= 1:n-1
    [c(k),s(k)]=givens(H(k,k), H(k,k+1))
    H(k:k+1,k:n)=[c(k), -s(k);s(k),c(k)]* H(k:k+1, k:n)
  endfor 
  for k= 1:n-1
    H(1:k+1, k:k+1)=H(1:k+1, k:k+1) * [c(k), s(k); -s(k), c(k)]
  endfor
  c
endfunction
