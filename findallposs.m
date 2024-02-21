function [possible]=findallposs(C)
n=size(C,2);
possible=[];
m=2;
if n==2
    for i1=1:m
        for i2=1:m
                  possible=[possible;i1 i2];
            end
        end
    end



if n==3
    for i1=1:m
        for i2=1:m
            for i3=1:m
                  possible=[possible;i1 i2 i3 ];
            end
        end
    end
end

if n==4
    for i1=1:m
        for i2=1:m
            for i3=1:m
                  for i4=1:m
                  possible=[possible;i1 i2 i3 i4];
            end
        end
    end
    end
end

if n==5
    for i1=1:m
        for i2=1:m
            for i3=1:m
                for i4=1:m
                    for i5=1:m                                                                                                                                                      
                  possible=[possible;i1 i2 i3 i4 i5];
                       end
                end
            end
        end
    end
end

if n==6
    for i1=1:m
        for i2=1:m
            for i3=1:m
                for i4=1:m
                    for i5=1:m   
                        for i6=1:m                                                                                                                                                      
                  possible=[possible;i1 i2 i3 i4 i5 i6];
                       end
                end
            end
        end
    end
    end
end


if n==7
    for i1=1:m
        for i2=1:m
            for i3=1:m
                for i4=1:m
                    for i5=1:m
                        for i6=1:m
                            for i7=1:m
                              possible=[possible;i1 i2 i3 i4 i5 i6 i7 ];
                                                                                           
                                end
                            end
                        end
                    end
                end
            end
        end
    end

if n==10
    for i1=1:m
        for i2=1:m
            for i3=1:m
                for i4=1:m
                    for i5=1:m
                        for i6=1:m
                            for i7=1:m
                                for i8=1:m
                                     for i9=1:m
                                         for i10=1:m
                              possible=[possible;i1 i2 i3 i4 i5 i6 i7 i8 i9 i10];
                                                                                           
                                end
                            end
                        end
                    end
                end
            end
        end
    end
        end
    end
end
     