function [r L s]=class_fuzzy(f,nbin,MM)
n=length(f);
L=(max(f)-min(f))/nbin;
Lb(1)=min(f);
for i=2:nbin
    Lb(i)=Lb(i-1)+L;
end
Ub(1)=Lb(2)-0.000000000001;
for i=2:nbin
    Ub(i)=Ub(i-1)+L+0.000000000001;
end
s=[Lb' Ub'];
if MM==-1
    s=s;
else
    s=s(end:-1:1,:);
end

for i=1:n
    for j=1:nbin
        if isbelong(f(i),s(j,:))==1
            r(i)=j;
        end
    end
end