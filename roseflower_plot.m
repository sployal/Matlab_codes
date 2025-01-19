n = 800;
A = 1.995653;
B = 1.27689;
c = 8;
r = linspace(0,1,n);
theta=linspace(-2,20*pi,n);
[R,THETA]=ndgrid(r,theta);
% define the no of petals we want per cycle Roses thave 3 and a bit 
petalNum=3.6;
x = 1-(1/2)*((5/4)*(1 - mod(petalNum*THETA,2*pi)/pi).^2 -1/4).^2;
phi= (pi/2)*exp(-THETA/(c*pi));
y = A*(R.^2).*(B*R -1).^2.*sin(phi);
R2 = x.*(R.*sin(phi) + y.*cos(phi));
x = R2.*sin(THETA);
y = R2.*cos(THETA);
z=x*(R*cos(phi)-y.*sin(phi));
%%define a red map for our red mapping
red_map=linspace(1,0.25,10)';
red_map (:,2)=0;
red_map (:,3)=0;
clf
surf(x,y,z, 'linestyle','none')
view([-40.50 42.00])
colormap (red_map)
%remove axis from a figure 
shading interp

