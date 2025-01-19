% Point animation
i=1;
for t=1:0.01:9
    y=t;
    plot(y,'s','MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor','k');
    ylim([0,9]);
    anim(i)=getframe;
    i=i+1;
    
    
end
