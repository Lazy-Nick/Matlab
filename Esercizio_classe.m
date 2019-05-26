


%%sistema con inseguimento nullo
s=sym('s')
num=(s^2+0.4*s+1)
den=s^2*(s^2+4*s+3)*(s+1)
T=tf(sym2poly(num),sym2poly(den))
bode_asymptotic(sym2poly(num),sym2poly(den))
%%bode(T)

%%controllo altre specifiche

