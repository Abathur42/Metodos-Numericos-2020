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
## @deftypefn {} {@var{retval} =} GivensQR (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ramiro <Ramiro@RAMIRO-PC>
## Created: 2020-09-13

function [Q,R] = GivensQR (A)
  [m,n] = size(A);
  Q = eye(m);
  R = A;

  for j = 1:n
    for i = m:-1:(j+1)
      G = eye(m);
      [c,s] = givensrotation( R(i-1,j),R(i,j) );
      G([i-1, i],[i-1, i]) = [c -s; s c];
      R = G'*R;
      Q = Q*G;
    endfor
  endfor
endfunction
