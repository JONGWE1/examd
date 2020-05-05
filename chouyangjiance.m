function [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n)
%输入的gmubiao和zshuru分别是训练神经网络时用的期望值和输入值对应的数组,可以抽取部分
    Zcy=zeros(n,11);
    Gcy=zeros(n,1);
    for i=1:n
        t=round(rand(1)*(size(gmubiao,1)-1)+1);
        for j=1:11
            Zcy(i,j)=zshuru(t,j);
        end
        Gcy(i)=gmubiao(t);
    end
end