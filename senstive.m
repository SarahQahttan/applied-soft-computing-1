function [WF rrr cc boundry]=senstive(CD,W) 
[WW alph boundry delta]=genrate_weight(W,8);
for tr=1:size(WW,1)
[results r]=edas(CD,WW(tr,:));
rrr(:,tr)=r';
end
WF=[WW;alph];
R=rrr;
r=R(:,1);
R=R(:,2:end);
for i=1:9
    cc(i)=corr(r,R(:,i));
end
