function createhgtransform(Parent1, xdata1, ydata1, zdata1)
%CREATEHGTRANSFORM(PARENT1,XDATA1,YDATA1,ZDATA1)
%  PARENT1:  hgtransform parent
%  XDATA1:  surface xdata
%  YDATA1:  surface ydata
%  ZDATA1:  surface zdata

%  Auto-generated by MATLAB on 06-May-2010 16:10:25

% Create hgtransform
hgtransform1 = hgtransform('Parent',Parent1,...
    'Matrix',[1 0 0 0;0 1 0 2;0 0 1 0;0 0 0 1]);

% Create surf
surf(xdata1,ydata1,zdata1,'Parent',hgtransform1,'FaceColor',[1 0 0],...
    'EdgeColor','none');

