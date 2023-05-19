%neka je vrijeme porasta < 0.5 s
%neka je maksimalno nadvišenje < 5%

% test parametri
m=0.11; %masa loptice [kg]
R=0.015; %radijus loptice [m]
d=0.03; %pomak ruke poluge [m]
g=-9.81; %akceleracija slobodnog pada [m/s^2]
L=1; %duljina grede [m]
J=2*m*R*R/5; %moment inercije za homogenu ispunjenu kuglu [kg m*m]

MN=5; %maksimalno nadvišenje
tr=1; %vrijeme rasta

zeta=sqrt((log(MN/100))^2/(pi^2+(log(MN/100))^2));
omega=pi/(2*tr*sqrt(1-zeta^2));  % -> vrijeme porasta (od 10% do 90%)
%1.8/tr

s=tf('s');
Gs=-m*g*d/(L*(J/R^2 + m)*s^2);

zo=0.001; % 0.001
po=omega*2;
Gr=(s+zo)/(s+po);

Go=Gr*Gs

rlocus(Gr*Gs)
grid
[poles, gains] = rlocus(Gr*Gs);
            index = find(abs(real(poles))./sqrt((real(poles)).^2+(imag(poles)).^2) > zeta & abs(real(poles))./sqrt((real(poles)).^2+(imag(poles)).^2) < (zeta+0.1), 1);

%index = find(abs(real(poles))./sqrt((real(poles)).^2+(imag(poles)).^2) > zeta, 1);
p=poles(index);

sizeOfArray=size(poles,1);
Kr=gains(ceil(index/sizeOfArray));

%Ks=-m*g*d/(L*(J/R^2 + m));
%Ko=(sqrt(real(p)^2 + imag(p)))^2;
%Kr=Ko/Ks

Gx=feedback(Kr*Gr*Gs,1)
figure
t=0:0.01:5;


step(0.25*Gx,t)
axis([0 5 0 0.5])

%vrijeme porasta otprilike...
[graph,time] = step(0.25*Gx,t);
ind1=find(graph >= 0.9*0.25,1);
ind2=find(graph >= 0.1*0.25,1);
delta_t = time(ind1) - time(ind2)

%maksimalno nadvišenje
sigma=(max(graph)-0.25)/(0.25-0.0) * 100 