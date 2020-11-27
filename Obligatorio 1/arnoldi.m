function [H,Q]=arnoldi(A,r,m)
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
 Q(:,m+1)=[]; 
endfunction

