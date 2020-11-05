% Generate 1023bit Gold Code for the satellite n
%       gold(n)
% V1.2
function goldn=gold(n)

A=[2 6;3 7;4 8;5 9;1 9;2 10; 1 8;2 9;3 10;2 3;3 4;5 6;6 7;7 8;8 9;9 10;...
    1 4;2 5;3 6;4 7;5 8;6 9;1 3;4 6;5 7;6 8;7 9;8 10;1 6;2 7;3 8;4 9];

G=[A(n,1) A(n,2)];      %guarda informaci�n del i-esimo sat�lite
goldn=zeros(1,1023);
G1=zeros(1,1023);
G2=zeros(1,1023);
R1=-ones(1,10);
R2=-ones(1,10);

for i=1023:-1:1
    G1(i)=R1(10);
    G2(i)=R2(G(1))*R2(G(2));
    goldn(i)=G1(i)*G2(i);
    
    a1=R1(3)*R1(10);
    a2=R2(2)*R2(3)*R2(6)*R2(8)*R2(9)*R2(10);
    
    R1 = circshift(R1',1)';
    R2 = circshift(R2',1)';
    
    R1(1)=a1;
    R2(1)=a2;
end
goldn=fliplr(goldn);
end
