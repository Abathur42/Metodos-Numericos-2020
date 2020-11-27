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
## @deftypefn {} {@var{retval} =} givensrotation (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ramiro <Ramiro@RAMIRO-PC>
## Created: 2020-09-13

function [c,s] = givensrotation(a,b)
  if b == 0
    c = 1;
    s = 0;
  else
    if abs(b) > abs(a)
      r = a / b;
      s = 1 / sqrt(1 + r^2);
      c = s*r;
    else
      r = b / a;
      c = 1 / sqrt(1 + r^2);
      s = c*r;
    end
  end
endfunction
