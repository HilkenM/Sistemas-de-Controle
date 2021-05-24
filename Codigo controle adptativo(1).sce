clc
clear
k1 = 1.5
k2 = 1.5
Kp =2
ap =1

//Definição das condições iniciais
e = zeros(1,100000);
p = zeros(1,100000);
i = zeros(1,100000);
u = zeros(1,100000);
r = ones(1,100000);
y = zeros(1,100000);

//Passo
//Cada 10000 amostras correspondem a 1 segundo
h=0.0001;

//condições iniciais do sistema
y(1,1)=0.5
u(1,1) = p(1,1) + i(1,1)

//número de amostras
n = 100000;

//laço rodando toda a planta
k=2;
for k=2:n;
    z = k -1
    
    y(1,k) = Kp*u(1,z)*h - ap*y(1,z)*h + y(1,z);
    
    e(1,k)=r(1,k)-y(1,k);
    
    p(1,k) = k1*e(1,k);
    
    i(1,k) = i(1,z) + k2*h*e(1,z);
    
    u(1,k)=p(1,k)+i(1,k);

end

 subplot(2,2,1), title("Saída")
 plot(y)

 subplot(2,2,2), title("Sinal de controle")
 plot(u)

 subplot(2,2,3), title("Sinal de referência")
 plot(r)

 subplot(2,2,4), title("Erro")
 plot(e)

