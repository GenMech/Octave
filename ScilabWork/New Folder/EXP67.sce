clear clc
disp('Gitesh Pareek (20514813120)')
x= [0 1 2 3 4 5 6 7 8]
f= [56 156 132 92 37 22 4 0 1]
N=sum(f) 
mean=sum(x.*f)/sum(f) 
mprintf('mean = %.3f \n', mean)
p=exp(-mean).*(mean^x)./factorial(x)
ef=int(N*p)
scf()
scatter(x,f,msizes=20,'red', marker=0) 
mtlb_hold('on')
plot2d(x,ef,style=2)
legend(['Given data to fit' 'Theoretical Poisson frequencies'])
xtitle('Fitting of Poisson Distribution (Gitesh Pareek)', 'x', 'frequency (f)')

