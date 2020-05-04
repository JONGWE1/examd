size1=size(zTIME,1);%%Êý¾ÝÇåÏ´
for i= 1:size1
    if zTIME(i)==zTIME(i+1)
        zCO(i)=(zCO(i)+zCO(i+1))/2;zCO(i+1,:)=[];
        zNO2(i)=(zCO(i)+zCO(i+1))/2; zNO2(i+1,:)=[];
        zO3(i)=(zCO(i)+zCO(i+1))/2;zO3(i+1,:)=[];
        zPM10(i)=(zCO(i)+zCO(i+1))/2;zPM10(i+1,:)=[];
        zPM25(i)=(zCO(i)+zCO(i+1))/2;zPM25(i+1,:)=[];
        zSO2(i)=(zCO(i)+zCO(i+1))/2;zSO2(i+1,:)=[];
        zfengsu(i)=(zCO(i)+zCO(i+1))/2;zfengsu(i+1,:)=[];
        zjiangshui(i)=(zCO(i)+zCO(i+1))/2;zjiangshui(i+1,:)=[];
        zshidu(i)=(zCO(i)+zCO(i+1))/2;zshidu(i+1,:)=[];
        zwendu(i)=(zCO(i)+zCO(i+1))/2;zwendu(i+1,:)=[];
        zyaqiang(i)=(zCO(i)+zCO(i+1))/2;zyaqiang(i+1,:)=[];
        zTIME(i+1,:)=[];
        zDATE(i+1,:)=[];
    end
end

