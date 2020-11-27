#Asignacion de Parametros
  inicioIntervalo=0;
  finIntervalo=3;
  cantIntervalos=500; #10 50 100
  h=(finIntervalo-inicioIntervalo)/cantIntervalos;
  u0=3;
  v0=4;
  p0=5;
  q0=6;
#Algoritmo
  uaux=u0;
  vaux=v0;
  paux=p0;
  qaux=q0;
  for k= 1:cantIntervalos
    ui= paux*h + uaux;
    vi= qaux*h + vaux;
    pi= (((-2* vaux)/(uaux^2+ vaux^2 + 1))*paux*qaux)*h + paux;
    qi= (((-2* uaux)/(uaux^2+ vaux^2 + 1))*paux*qaux)*h + qaux;
    uaux=ui;
    vaux=vi;
    paux=pi;
    qaux=qi;
   endfor
 ui
 vi
 pi
 qi
 
