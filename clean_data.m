%%
%此文件包含数个操作，分开使用
%（不用这个）用zijiansuoyin.m
% clear all
% load data.mat
%size1=size(z_mTIME,1);%%数据清洗
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
%%一号：将国家站中比自建站多的数据删掉（不要这个）
for i=1:1000
    if find(z_hTIME==g_hTIME(i))
    else
        disp(g_hTIME(i));
        g_hTIMECopy(i,:)=[];
    end
end
%%
%%二号：将 国家站 比自建站多的数据删掉，需要再进行一次反向操作
%t4=zeros(4200,1);
for i=1:4200
    [t1,t2,~]=take_certain_time(z_hTIME,g_hTIME(i));
    if ~isempty(t1)
    else%直接让多出来的数据变成0或者NaT
        g_hTIME(i,:)=NaT;
        galldata(i,:)=[0,0,0,0,0,0];
        disp(i);
    end
end
%%
%%删掉数据中包含的全0和NaT的行
for i=1:5000
    if isnat(g_hTIME(i))
        g_hTIME(i,:) = [];
        galldata(i,:) = [];
        disp(i);
    end
end
%%
coef=zeros(6,1);%计算原始数据相关系数
for i=1:6
    a=corrcoef(galldata(:,i),zsomedata(:,i));
    coef(i)=a(2);
end

