k=1;%�Խ�վ����������
a=zeros(4200,1);
for i=1:231573
    if hour(z_mTIME(i))~=hour(z_mTIME(i+1))
        %disp("ǰ����Ӻ�Сʱ����ͬ");
        if hour(g_hTIME(k+1))==hour(z_mTIME(i+1))
            a(k)=i;k=k+1;
        elseif hour(g_hTIME(k+1))>hour(z_mTIME(i+1))
            %return;
        else 
            a(k)=i;
            k=k+1;
        end
    end
%     if(mod(i,10000)==0)
%         disp(i);
%     end
    %pause(0.5);
end