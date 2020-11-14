//Hilken Matthaus - 14/11/2020- Sistemas de controle 2
//Definição da variável
s =poly(0,'s')

//Definição do sistema
H = syslin([],1,s^3+6*s^2+11*s+6)

//Chamada da função routh_t
G= routh_t(H,0)

//mostrar na tela
disp(G)
