%%
%���ļ����������������ֿ�ʹ��
%�������������zijiansuoyin.m
% clear all
% load data.mat
%size1=size(z_mTIME,1);%%������ϴ
% t=0;
for i=1:size1
    if minute(z_mTIME(i))==minute(z_mTIME(i+1))&&hour(z_mTIME(i))==hour(z_mTIME(i+1))
%         disp(z_mTIME(i));disp(z_mTIME(i+1));t=t+1;
        for j=1:11
        	zalldata(i,j)=(zalldata(i,j)+zalldata(i+1,j))/2;
        end
        zalldata(i+1,:)=[];
        z_mTIME(i+1,:)=[];
    end
end
%%
%%һ�ţ�������վ�б��Խ�վ�������ɾ������Ҫ�����
for i=1:1000
    if find(z_hTIME==g_hTIME(i))
    else
        disp(g_hTIME(i));
        g_hTIMECopy(i,:)=[];
    end
end
%%
%%���ţ��� ����վ ���Խ�վ�������ɾ������Ҫ�ٽ���һ�η������
%t4=zeros(4200,1);
for i=1:4200
    [t1,t2,~]=take_certain_time(z_hTIME,g_hTIME(i));
    if ~isempty(t1)
    else%ֱ���ö���������ݱ��0����NaT
        g_hTIME(i,:)=NaT;
        galldata(i,:)=[0,0,0,0,0,0];
        disp(i);
    end
end
%%
%%ɾ�������а�����ȫ0��NaT����
for i=1:5000
    if isnat(g_hTIME(i))
        g_hTIME(i,:) = [];
        galldata(i,:) = [];
        disp(i);
    end
end
%%
coef=zeros(6,1);%����ԭʼ�������ϵ��
for i=1:6
    a=corrcoef(galldata(:,i),zsomedata(:,i));
    coef(i)=a(2);
end

