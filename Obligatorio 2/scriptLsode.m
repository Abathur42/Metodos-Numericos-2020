 ##Este es un pequeño script para cargar previamente todos los datos y graficar.
 ##Necesita la funcion Uo para funcionar.
 N = 500;
 K = 500;
 h=1/N;
 k = 1/K;
 A = gallery ("tridiag",N-1);
 t = [0:h:h*N];
 fun = @(U,t) (-1/(h^2))*A*U+(1000*sqrt(abs(1-t)));
 
 T = lsode(fun,Uo(500),t);
 
 #plot(t,T)
 #title("lsode del problema")
 #xlabel("Tiempo")
 #ylabel("Temperatura")