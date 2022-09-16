clc
disp('Gitesh Pareek (20314813120)')
n=6;
p=1/3;
N=1458;
mprintf('Number of dice (n) = %i \n \n',n)
mprintf('Number of times the dice are tossed is: %i \n \n',N)
mprintf('Probability of success (getting 2 or 3) on a single die is: %f \n \n',p)
for i=0:n
    ans= nchoosek(n,i)*(p^i)*((1-p)^(n-i));
    mprintf('P(X=%i) = %f \t',i,ans);
    mprintf('Expected Frequency (P(X=%i)*N = %f \n \n',i,ans*N);
end
