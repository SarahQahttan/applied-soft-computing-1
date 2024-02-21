function [s]=score1(S,q)
M=S([1 3]);
PM=S([2 4]);
V=S([5 7]);
PV=S([6 8]);
s=(mean(M.*PM)^q)-(mean(V.*PV)^q);