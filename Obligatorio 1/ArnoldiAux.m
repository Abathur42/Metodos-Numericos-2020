function [H,Q,h]=ArnoldiAux(A,r,m)
p=r./sqrt(sum((r.*r)));
Q(:,1)=p;
for k=1:m
  v=A*p;
  for j=1:k
    H(j,k)=sum(Q(:,j).*v);
    v=v-H(j,k)*Q(:,j);
  endfor
  H(k+1,k)=sqrt(sum(v.*v));
  if ((H(k+1,k))>0)
    p=v/H(k+1,k);
    Q(:,k+1)=p;
    
  endif 
endfor 

for k=m+1:m+1
  v=A*p;
  for j=1:k
    h(j)=sum(Q(:,j).*v);
    v=v-h(j)*Q(:,j);
  endfor
  h(k+1)=sqrt(sum(v.*v));
  h=h';
  
endfor 
endfunction

