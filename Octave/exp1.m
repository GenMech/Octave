clear
clc

disp('Gitesh Pareek, 20514813120')
disp('Simplex Method Implementation')
disp('Maximize Z= 3x(1) + 2x(2) + x(3)')
printf('Subject to constraints: \n 4x(1) + x(2) + x(3) = 30 \n  2x(1) + 3x(2) + x(3) <= 60 \n x(1) + 2x(2) + 3x(3) <= 40 \n x(1), x(2), x(3) >= 0 \n \n' )

c = [3, 2, 1]';
A = [ 4, 1, 1;
     2, 3, 1;
      1, 2, 3];
b = [30, 60, 40]';
lb = [0, 0, 0]';
ub=[];
ctype = "SUU";
vartype = "CCC";
s = -1;
param.msglev = 1;
param.itlim = 100;

[xopt, fopt, errnum, extra] = glpk (c, A, b, lb, ub, ctype, vartype, s, param);

printf('Solutions are: \n')
for i=1:rows(c)
printf("x(%i) = %.2f \n",i,xopt(i))
end

printf('Z max = %.2f \n',fopt)
printf('Solution status = %i:',extra.status);

switch extra.status
case 1
  printf(' \n')
case 2
  printf(' Solution is Feasible \n')
case 3
  printf(' Solution is Infeasible \n')
case 4
  printf(' Problem has no feasible solution \n')
case 5
  printf(' Solution is Optimal \n')
case 6
  printf(' Problem has no unbounded solution \n')
endswitch

printf('\nGitesh Pareek(20314813120)');
