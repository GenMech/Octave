Q = [2,-1; -1,3];
c = [2;4];
C = [-2,-3; -5,-1];
d = [-5;-1];
xL = [0;0];
xU = [1e10;1e10];
[xopt, lagr, fopt] = quapro(Q,c,C,d,xL,xU);
xopt
// Plot illustrating quadratic programming solution 
deff('[w] = f(x1,x2)','w = x1^2-x1*x2+(3/2)*x2^2+2*x1+4*x2')
xx1 = [-5:0.5:5]; xx2 = [-5:0.5:5]; zz = feval(xx1,xx2,f);
contour(xx1,xx2,zz,10)
deff('[y1] = f1(x)','y1 = (5-2*x)/3')
deff('[y2] = f2(x)','y2 = 1-5*x')
xxx = [-5:0.01:5]; yy1 = f1(xxx); yy2 = f2(xxx);
plot2d([xxx' xxx'], [yy1' yy2'], [1 1], '011',' ',[-5 -5 5 5])
xpoly([-5,5],[0,0],'lines');
xpoly([0,0], [-5,5], 'lines');
xfrect(xopt(1)-0.05, xopt(2)-0.05,0.1,0.05)
xstring(xopt(1)+0.1, xopt(2)+0.1, 'solution')
xtitile('Quadratic programming solution','x1','x2')
