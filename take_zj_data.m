%���Խ����ݵ�ʱ�����ݽ����Ż�
for i=1:4168
    z_hTIME(i)=z_mTIME(a(i)+1);
    z_hTIME(i)=z_hTIME(i)-minutes(minute(z_hTIME(i)));
end
%��������ȡ������
for i=1:4168
    for j=1:11
        zsomedata(i,j)=zalldata(a(i)+1,j);
    end
end