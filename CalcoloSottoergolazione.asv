%%calcolo specifiche sottoergolazione
%colonna 1:percentuale
%colonna 2:valore smorzamento
%colonna 3:margine di fase
%colonna 4:# poli
clear;
ris=zeros(19,4);
x=sym('x');
for i=1:+1:20
    Disequazione=exp((-pi*x)/(sqrt(1-x^2)))<(i/20);
    assume(x,'real');
    soluzione=solve(Disequazione, 'Real', true,'IgnoreAnalyticConstraints', true);
    %soulzione=solve(Disequazione, 'Real', true,'ReturnConditions', true,
    %'IgnoreAnalyticConstraints', true); %soluzione con condizione
    ris(i,1)=i*100/20;
    %ris(i,1)=double(soluzione.conditions); %soluzione con condizione
    ris(i,2)=double(soluzione);
    ris(i,3)=ris(i,2)*100;
    if ris(i,3)<60
        ris(i,4)=2;
    else
        ris(i,4)=1;
    end
end


%%Eventuali test
%fplot(Disequazione);