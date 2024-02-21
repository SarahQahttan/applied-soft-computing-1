function [s]=score(S)
ML=S(1:9:end);
MU=S(2:9:end);
PM=S(3:9:end);

VL=S(4:9:end);
VU=S(5:9:end);
PV=S(6:9:end);

IL=S(7:9:end);
IU=S(8:9:end);
PI=S(9:9:end);

s=(mean((ML+MU).*PM)+mean((2-(VL+VU)).*PV)+mean((2-(IL+VU)).*PI))/6;