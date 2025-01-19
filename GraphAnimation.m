close all

axis tight manual
v = VideoWriter('exp3dvideo.avi');
open(v);

[x,y] = meshgrid( -10:0.5:10,-10:0.5:10);
r = sqrt(x.^2+y.^2);
%

for k = 0:200
    z = cos(r/2+k/10).*exp(-r.^2/50);
    surf(x, y, z);
    xlim([-10,10]);
    ylim([-10,10]);
    zlim([-1,1]);
    frame = getframe(gcf);
    writeVideo(v,frame);
end

close(v);