% Creating some sample data
X = linspace(-2*pi, 2*pi, 50);
Y = linspace(-2*pi, 2*pi, 50);
[X, Y] = meshgrid(X, Y);
Z = sin(sqrt(X.^2 + Y.^2));

% Setting the colormap to parula for a 3d plot
colormap(parula);

% Creating the 3d plot with smooth shading
%figure;
surf(X, Y, Z);
shading interp;
title('3D Surface Plot with Smooth Shading');
xlabel('X');
ylabel('Y');
zlabel('Z');

% Creating a colorbar
%figure;
surf(X, Y, Z);
shading interp;
title('3D Surface Plot with Smooth Shading and Colorbar');
xlabel('X');
ylabel('Y');
zlabel('Z');
colorbar;