function [LM_m,BYS_m]=main(gmubiao,zshuru,gas,N,n)
%[LM_m,BYS_m]=main(gNO2,zsomedata,'NO2',1000,500),����1000�����飬ÿ��ȡ500������
%������������������
%nΪ����������ȡ���ĸ���
    a=zeros(N,1);b=zeros(N,1);
    for ii=1:N
        [Gcy1,Gcypre1,coef1]=cy_jsR(gmubiao,zshuru,n,gas,'LM');
        a(ii)=coef1;
        [Gcy2,Gcypre2,coef2]=cy_jsR(gmubiao,zshuru,n,gas,'BYS');
        b(ii)=coef2;
    end
    LM_m=mean(a);
    BYS_m=mean(b);
    subplot(2,1,1);
    plot(1:size(Gcy1),Gcy1,'r.-',1:size(Gcy1),Gcypre1,'b.:');
    subplot(2,1,2);
    plot(1:size(Gcy2),Gcy2,'r.-',1:size(Gcy2),Gcypre2,'b.:')
end