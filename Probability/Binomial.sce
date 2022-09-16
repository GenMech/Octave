X=[0 1 2 3 4]
P=[0 0 0 0 0]
F=[17 52 54 31 6]

EXF=[0 0 0 0 0]
N=160,n=4,p=0.5,q=0.5,s1=0,s2=0,s3=0;
P(1)=0.5^4
for(i=2:5)
  P(i)=((4-X(i-1))/(X(i-1)+1))*(p/q)*P(i-1);
end
for(i=1:5)
  EXF(i)=P(i)*F(i);
end
disp("The probabilities are")
P
disp("The expected frequencies are")
EXF
