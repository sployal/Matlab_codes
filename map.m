h = figure;
Z = peaks;
surf(Z)
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';

loops = 40;
M(loops) = struct('cdata',[],'colormap',[]);

h.Visible = 'off';
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    M(j) = getframe;
end
h.Visible = 'on';

h = figure;
Z = peaks;
surf(Z)
axis tight manual

ax = gca;
ax.NextPlot = 'replaceChildren';

loops = 40;
M(loops) = struct('cdata',[],'colormap',[]);
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    M(j) = getframe;
end

movie(M);
h = figure;
Z = peaks;
surf(Z)
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';

loops = 40;
M(loops) = struct('cdata',[],'colormap',[]);

h.Visible = 'off';
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    M(j) = getframe;
end
h.Visible = 'on';

movie(M,[2 1 15 23 36],12);

h = figure;
Z = peaks;
surf(Z)
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';
loops = 40;
M(loops) = struct('cdata',[],'colormap',[]);
h.Visible = 'off';
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    M(j) = getframe;
end

h.Visible = 'on';
movie(M,1,6);
h = figure;
Z = peaks;
surf(Z)
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';

loops = 40;
M(loops) = struct('cdata',[],'colormap',[]);

h.Visible = 'off';
for j = 1:loops
    X = sin(j*pi/10)*Z;
    surf(X,Z)
    drawnow
    M(j) = getframe(h);
end


h.Visible = 'on';

movie(h,M,1,12,[30 30 0 0]);







































