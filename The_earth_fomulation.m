
% The earth fomulation 

t = 0:0.1:2*pi;
x = sin(t);
y = cos(t);

figure
patch(x,y,'r')
patch(x+0.8,y,'g')
patch(x+0.4,y+0.8,'b')
axis square tight 
alpha(0.3)

%Transparency of individual surfaces 
[X,Y,Z] = peaks(20);
s2 = surf(X,Y,Z);
s2.AlphaData = gradient(Z);    
s2.FaceAlpha = 'flat';

%Transparency for individual images
earth = imread('landOcean.jpg');
image(earth)    
axis image

% Adding cloud layer in the trasparency
clouds = imread('cloudCombined.jpg');
image(earth)
axis image
hold on
im = image(clouds);
im.AlphaData = max(clouds,[],3);    
hold off
%Transparency for individual patches 
cla
p1 = patch(x,y,'r');
axis square tight
p1.FaceVertexAlphaData = 0.2;
p1.FaceAlpha = 'flat' ; 
p1.FaceVertexAlphaData = x';
p1.FaceAlpha = 'interp';

%Transparency with Texture maping
[px,py,pz] = sphere(50);

sEarth = surface(py, px ,flip(pz));
sEarth.FaceColor = 'texturemap';
sEarth.EdgeColor = 'none';
sEarth.CData = earth;
hold on
sCloud = surface(px*1.02,py*1.02,flip(pz)*1.02); 

sCloud.FaceColor = 'texturemap'; 
sCloud.EdgeColor = 'none';
sCloud.CData = clouds;

sCloud.FaceAlpha = 'texturemap';
sCloud.AlphaData = max(clouds,[],3);
hold off
view([80 2]) 
daspect([1 1 1])
axis off tight



