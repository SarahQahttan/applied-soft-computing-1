clc;
clear;
Part1_xlx_read={'D:\code of ISI papers\sendia paper\'};
Part2_xlx_read={'\results'};
Part3_xlx_read={'.xlsx'};
Address_Read=char(cellstr(strcat(Part1_xlx_read,Part2_xlx_read,Part3_xlx_read)));
I=[0.95	1	0.8	0.9	0.95	0.2	0	0.05	0.8	0.05	0.1	0.2	0	0.05	0.8	0.05	0.1	0.2
0.75	0.8	0.7	0.7	0.75	0.3	0.2	0.25	0.7	0.25	0.3	0.3	0.2	0.25	0.7	0.25	0.3	0.3
0.55	0.6	0.5	0.5	0.55	0.5	0.4	0.45	0.5	0.45	0.5	0.5	0.4	0.45	0.5	0.45	0.5	0.5
0.35	0.4	0.7	0.25	0.35	0.3	0.6	0.65	0.7	0.65	0.75	0.3	0.6	0.65	0.7	0.65	0.75	0.3
0.15	0.2	0.8	0.1	0.15	0.2	0.8	0.85	0.8	0.85	0.9	0.2	0.8	0.85	0.8	0.85	0.9	0.2];
CW=[5	2	1	2	4	4	1	4	3	5	3	3	4
5	2	2	2	4	4	1	5	3	5	3	3	4
5	3	1	2	4	5	1	5	2	4	4	3	3];
Part={'Layering' 'Offloading'  'Encryption'  'Authentication'};
 [ag]=agg(CW');
 for i=1:13
     s(i)=score(cell2mat(ag{i}));
 end
 W=s./sum(s);
i=3;
 if i==1
C=xlsread(Address_Read ,Part{i},'F2:R10'); 
 else if i==2
         C=xlsread(Address_Read ,Part{i},'F2:R7'); 
 else if i==3
         C=xlsread(Address_Read ,Part{i},'F2:R24'); 
 else if i==4
         C=xlsread(Address_Read ,Part{i},'F2:R13'); 
     end
     end
     end
 end
[results rank]=edas(C,W);

 if i==1
   xlswrite(Address_Read,results,Part{i},'S2:X10')
 else if i==2
    xlswrite(Address_Read,results,Part{i},'S2:X7')
 else if i==3
   xlswrite(Address_Read,results,Part{i},'S2:X24')
 else if i==4
   xlswrite(Address_Read,results,Part{i},'S2:X13')
     end
     end
     end
 end
 
 
% %%                   senstive

 [WF rrr cc boundry]=senstive(C,W);
 
 if i==1
   xlswrite(Address_Read,rrr,Part{i},'G17:P25')
   xlswrite(Address_Read,cc',Part{i},'U16:U24')
 else if i==2
   xlswrite(Address_Read,rrr,Part{i},'G15:P20')
   xlswrite(Address_Read,cc',Part{i},'U14:U22')
  else if i==3
   xlswrite(Address_Read,rrr,Part{i},'G32:P54')
   xlswrite(Address_Read,cc',Part{i},'U31:U39')
      else if i==4
   xlswrite(Address_Read,rrr,Part{i},'G21:P32')
   xlswrite(Address_Read,cc',Part{i},'U20:U28')
          end
     end
     end
 end
 