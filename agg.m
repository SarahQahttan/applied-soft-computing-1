function [ag]=agg(C)
I=[0.95	1	0.8	0.9	0.95	0.2	0	0.05	0.8	0.05	0.1	0.2	0	0.05	0.8	0.05	0.1	0.2
0.75	0.8	0.7	0.7	0.75	0.3	0.2	0.25	0.7	0.25	0.3	0.3	0.2	0.25	0.7	0.25	0.3	0.3
0.55	0.6	0.5	0.5	0.55	0.5	0.4	0.45	0.5	0.45	0.5	0.5	0.4	0.45	0.5	0.45	0.5	0.5
0.35	0.4	0.7	0.25	0.35	0.3	0.6	0.65	0.7	0.65	0.75	0.3	0.6	0.65	0.7	0.65	0.75	0.3
0.15	0.2	0.8	0.1	0.15	0.2	0.8	0.85	0.8	0.85	0.9	0.2	0.8	0.85	0.8	0.85	0.9	0.2];
[CI]=lingu_Mat(C,I);
[n,m]=size(C);
for i=1:n
[possible]=findallposs(C(i,:));
S=[];
 for i1=1:size(possible,1)
s1=1;
s2=1;
s3=1;
s4=1;
s5=1;
s6=1;
s7=1;
s8=1;
s9=1;
for j=1:size(possible,2)
 [ML MU PM VL VU PV IL IU PI]=trans(CI{i,j});
s1=s1*((1-(ML(possible(i1,j))))^(1/n));
s2=s2*((1-(MU(possible(i1,j))))^(1/n));
s3=s3*PM(possible(i1,j));
s4=s4*VL(possible(i1,j))^(1/n);
s5=s5*VU(possible(i1,j))^(1/n);
s6=s6*PV(possible(i1,j));
s7=s7*IL(possible(i1,j))^(1/n);
s8=s8*IU(possible(i1,j))^(1/n);
s9=s9*PI(possible(i1,j));
end
S=[S {(1-s1) (1-s2) s3 s4 s5 s6 s7 s8 s9}];
end
ag{i}=S;
end