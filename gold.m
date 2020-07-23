
function gold=gold(i)

%Genera el Código Gold del i-esimo satélite

A=[2 6;3 7;4 8;5 9;1 9;2 10; 1 8;2 9;3 10;2 3;3 4;5 6;6 7;7 8;8 9;9 10;...
   1 4;2 5;3 6;4 7;5 8;6 9;1 3;4 6;5 7;6 8;7 9;8 10;1 6;2 7;3 8;4 9];

G=[A(i,1) A(i,2)]; %guarda información del i-esimo satélite
gold=zeros(1,1023);
G1=zeros(1,1023);
G2=zeros(1,1023);
R1=zeros(1,10)-1;
R2=zeros(1,10)-1;  
a1=0;
a2=0; 

for i=0:1022
   G1(1023-i)=R1(10);
   G2(1023-i)=R2(G(1))*R2(G(2));
   gold(1023-i)=G1(1023-i)*G2(1023-i);
   a1=R1(3)*R1(10);
   a2=R2(2)*R2(3)*R2(6)*R2(8)*R2(9)*R2(10);
   for k=0:8
      R1(10-k)=R1(10-k-1); %una rotación a derecha, debe de haber alguna
      R2(10-k)=R2(10-k-1); %función pero no la encontré
   end
   R1(1)=a1;
   R2(1)=a2;
end

gold=gold(1023:-1:1); % Lo invierte porque viene al revez

end
