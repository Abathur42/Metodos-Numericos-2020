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
## @deftypefn {} {@var{retval} =} Theta-metodo (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Gabriel <Gabriel@DESKTOP-KUN6LK1>
## Created: 2020-11-12

## como probamos en la parte  6b sabemos que el metodo del trapecio es un
## caso particular del theta metodo, entonces fijando el theta y dejando
## el resto igual se obtiene un algoritmo para el metodo del trapecio.
function res = metodoTrapecio(N,Deltat,K)
  theta = 1/2;
  function valorf = f(t)  
    valorf=1000*sqrt(abs(1-t));
  endfunction
      
  function valoru = u(x)  
    valoru=1000*x*(1-x)*(1+(3/2)*(x^3));
  endfunction
  z=1;
  mu=1;
  tiempoMax=K*Deltat;
  I=eye(N-1);
  h=(1/N);
  A = gallery ("tridiag",N-1);
  Inversa=inv((I+ (mu/h^2)*theta*Deltat*A));
  Beta= I-((mu*Deltat)/h^2) * (1-theta) *A;
  k=0;
  for(z=1:z++:(N-1))
    U_k(z)=u(z*h);
    G_k(z)=Deltat*(theta*f(Deltat)+(1-theta)*f(0));
  endfor
  z=1;
  res = U_k;
  tiempo = 0;
  k++;
  
  while(tiempo<=tiempoMax)
    U_k = Inversa * ((Beta * U_k') + G_k');
    U_k= U_k';   
    res  = [res;U_k];    
    G_k(:) = Deltat*(theta*f((tiempo+Deltat))+(1-theta)*f(tiempo));
    tiempo=tiempo+Deltat;
  endwhile
    t = [0:h:h*N];
    
    plot(res)
    title("Metodo del trapecio")
    xlabel("Cantidad de iteraciones")
    ylabel("Temperatura")  
endfunction
