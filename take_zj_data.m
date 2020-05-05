%对自建数据的时间数据进行优化
for i=1:4168
    z_hTIME(i)=z_mTIME(a(i)+1);
    z_hTIME(i)=z_hTIME(i)-minutes(minute(z_hTIME(i)));
end
%按照索引取出数据
for i=1:4168
    for j=1:11
        zsomedata(i,j)=zalldata(a(i)+1,j);
    end
end