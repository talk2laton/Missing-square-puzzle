T1 = hgtransform('Matrix', makehgtform('translate', [8,3,0]));
T2 = hgtransform('Matrix', makehgtform('translate', [0,0,0]));
T3 = hgtransform('Matrix', makehgtform('translate', [8,0,0]));
T4 = hgtransform('Matrix', makehgtform('translate', [8,1,0]));
axis([0,13,0,5]); ax = gca; ax.XTick = 0:13; ax.YTick = 0:5; 
grid on; daspect([1,1,1]);
fill([0,5,5], [0,0,2], 'r', 'FaceAlpha', 0.4, Parent = T1); 
fill([0,8,8], [0,0,3], 'g', 'FaceAlpha', 0.4, Parent = T2);
fill([0,5,5,2,2,0], [0,0,2,2,1,1], 'b', 'FaceAlpha', 0.4, Parent = T3);
fill([0,2,2,5,5,0], [0,0,1,1,2,2], 'y', 'FaceAlpha', 0.4, Parent = T4);
Animate(T1, [8,3,0], [0,3,0], 10); Animate(T1, [0,3,0], [0,0,0], 5);
Animate(T2, [0,0,0], [0,2,0], 4); Animate(T2, [0,2,0], [5,2,0], 10);
Animate(T4, [8,1,0], [5,1,0], 6); Animate(T4, [5,1,0], [5,0,0], 2);
function Animate(Trans, from, to, steps)
    p = from + linspace(0,1, steps+1)'*(to-from);
    for i = 1:steps
        Trans.Matrix = makehgtform('translate', p(i+1,:)); 
        pause(0.1); drawnow;
    end
end