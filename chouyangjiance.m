function [Gcy,Zcy]=chouyangjiance(gmubiao,zshuru,n)
%�����gmubiao��zshuru�ֱ���ѵ��������ʱ�õ�����ֵ������ֵ��Ӧ������,���Գ�ȡ����
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