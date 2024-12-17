clear;
clc;

Vs=12;
Vo=24;
f=50*10^3;
Dv_v=250*10^-3;
R=24;
Esr=20*10^-3;
%%
D=(Vo)/(Vs+Vo);
Dm=12/(36);
Il=(Vs*D)/(R*(1-D)^2);
Lmin=((((1-D)^2)*R)/(2*f))*1.25;
DI=0.4*Il;
Imax=Il+(DI/2);
Imin=Il-(DI/2);
C=D*Vo/(R*f*Dv_v);
Dv_esr=Il*Esr;
%% first transfer function
%%v1=((-D)/(1-D))*(1/(1+(s*Lmin/(R(1-D)^2 ))+(s^2*Lmin*C)/((1-D))^2 ));
d1=-D/(1-D);

%Lmin/(R(1-D)^2
x1=Lmin/(R*(1-D)^2);
%(Lmin*C)/((1-D))^2 )
x2=((Lmin*C)/((1-D))^2 );

%% second transfer function
%(-(v_g-v))/((1-D^2) *((1-s LI/(v_g-v))/(1+sL/(R(1-D)^2 )+(s^2*L*c)/((1-D)^2 )))
v1=-(Vs-Vo)/(1-D)^2;

%LI/(v_g-v)
q1=Lmin*Il/(Vs-Vo)

% L/(R*(1-D)^2)

q2=Lmin/(R*(1-D)^2)

% LC/(1-D)^2
q3=Lmin*C/(1-D)^2

%% Third transfer function 
% Ls/(Ls/R+LCs^2+(1-D)^2)








