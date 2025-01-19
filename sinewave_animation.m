%point moving on a sine wave code
i=1;
for t=0:1:720
    t1=0:1:720;
    y1=sind(t1);
    y=sind(t);
    plot(t1,y1,t,y,'o','MarkerSize',10,'MarkerFaceColor','g','MarkerEdgeColor','g')
    amin(i)=getframe;
    i=i+1;
end